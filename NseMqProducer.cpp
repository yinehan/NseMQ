#include  "NseMqProducer.h"

// initialize the static variable errstr_.
std::string NseMqProducer::errstr_ = "";

NseMqProducer::NseMqProducer() {
    // initialize pointers
    producer_conf_ = nullptr;
    producer_ = nullptr;
    producer_dr_cb_ = nullptr;
}

NseMqProducer::NseMqProducer(std::string broker_addr, RdKafka::DeliveryReportCb *producer_cb) {
    // initialize pointers
    producer_conf_ = nullptr;
    producer_ = nullptr;
    producer_dr_cb_ = nullptr;
    this->init(broker_addr, producer_cb);
}

NseMqProducer::~NseMqProducer() {
    // std::cout << "~NseMqProducer()" << std::endl;
    this->close();
}

/**
 * initialize producer configuration and create producer.
 * configuration: create, set bootstrap.servers, set producer delivery report callback if exist.
 * producer: create producer with producer_conf_.
 * @return
 */
NseMQ::ErrorCode NseMqProducer::init(std::string broker_addr, RdKafka::DeliveryReportCb *producer_cb) {
    // set the broker address/partition/producer delievry callback
    this->setBrokerAddr(broker_addr);
    this->setPartition(RdKafka::Topic::PARTITION_UA);
    this->setProducerDrCb(producer_cb);
    // create producer_conf_.
    producer_conf_ = RdKafka::Conf::create(RdKafka::Conf::CONF_GLOBAL);

    // set bootstrap broker.
    if (producer_conf_->set("bootstrap.servers", getBrokerAddr(), errstr_) !=
        RdKafka::Conf::CONF_OK) {
        return NseMQ::ERR_FAIL_INIT_SERVERS;
    }

    // set the producer delivery report callback
    if (nullptr != getProducerDrCb()) {
        if (producer_conf_->set("dr_cb", getProducerDrCb(), errstr_) != RdKafka::Conf::CONF_OK) {
            return NseMQ::ERR_FAIL_INIT_DR_CB;
        }
    }

    // create producer instance using accumulated global configuration.
    this->setProducer(RdKafka::Producer::create(producer_conf_, errstr_));
    if (!getProducer()) {
        return NseMQ::ERR_FAIL_CREATE_PRODUCER;
    }
    return NseMQ::ERR_NO_ERROR;
}

/* Send/Produce message. */
NseMQ::ErrorCode NseMqProducer::produce(const char *msg, size_t msg_len, std::string topic_name,
                                        std::string msg_type /*default NULL*/) {
    bool resend_flag = false;        // control queue full resend.
    RdKafka::Headers *headers = RdKafka::Headers::create();
    headers->add("type", msg_type);
    retry:
    RdKafka::ErrorCode err =
            producer_->produce(     // no-blocking
                    /* topic name and default partition */
                    topic_name, getPartition(),
                    /* Make a copy of the value */
                    RdKafka::Producer::RK_MSG_COPY /* Copy payload */,
                    /* Value */
                    (char*)msg, msg_len,
                    /* Key */
                    NULL, 0,
                    /* Timestamp (defaults to current time) */
                    0,
                    /* Message headers, if any */
                    headers,
                    /* Per-message opaque value passed to
                    * delivery report */
                    NULL);
    NseMQ::ErrorCode err_temp = NseMQ::ERR_NO_ERROR;
    if (err != RdKafka::ERR_NO_ERROR) {
        this->writeErrorLog("% Failed to produce to topic(" + topic_name + "):"
                            + RdKafka::err2str(err));
        if (err == RdKafka::ERR__QUEUE_FULL) {
            /* If the internal queue is full, wait for
            * messages to be delivered and then retry.
            * The internal queue represents both
            * messages to be sent and messages that have
            * been sent or failed, awaiting their
            * delivery report callback to be called.
            *
            * The internal queue is limited by the
            * configuration property
            * queue.buffering.max.messages */
            producer_->poll(1000/*block for max 1000ms*/);
            if (!resend_flag) { // allow once resend.
                resend_flag = true;
                goto retry;
            } else {
                err_temp =  NseMQ::ERR_SEND_QUEUE_FULL;
            }
        } else if (err == RdKafka::ERR_MSG_SIZE_TOO_LARGE) {
            this->writeErrorLog("% message size it too large:" + RdKafka::err2str(err));
            err_temp = NseMQ::ERR_SEND_MSG_TOO_LARGE;
        } else if (err == RdKafka::ERR__UNKNOWN_TOPIC) {
            this->writeErrorLog("% broker don't have the topic [" + topic_name + "]:"
                                + RdKafka::err2str(err));
            err_temp = NseMQ::ERR_SEND_UNKNOWN_TOPIC;
        } else {
            err_temp = NseMQ::ERR_SEND_FAIL;
        }
    } else {
        /*std::cout << "% Enqueued message (" << strlen(msg) << " bytes) " <<
                  "for topic " << topic_name << std::endl*/;
        err_temp = NseMQ::ERR_NO_ERROR;
    }
    producer_->poll(1000);
    delete msg;
    return err_temp;
}
NseMQ::ErrorCode NseMqProducer::close(){
    // flush message: make sure all outstanding requests are transmitted and handled
    producer_->flush(5 * 1000 /* wait for max 5 seconds */);
    while (producer_->outq_len() > 0) {
        this->writeErrorLog("Waiting for message " + producer_->outq_len());
        producer_->poll(1000);
    }

    // delete other object.
    if(nullptr != producer_conf_){
        delete producer_conf_;
    }

    // delete producer object.
    if(nullptr != producer_){
        delete producer_;
    }

/*    if(nullptr != producer_dr_cb_){
        delete producer_dr_cb_;
    }*/

    // wait for RdKafka to decommission.
    RdKafka::wait_destroyed(5000);
    return NseMQ::ERR_NO_ERROR;
}


bool NseMqProducer::judgeConnection() {
    return this->judgeConnectionImpl(this->getProducer());
}

void NseMqProducer::getBrokerTopics(std::vector<std::string> &topics) {
    this->getBrokerTopicsImpl(topics, this->getProducer());
}
void NseMqProducer::writeErrorLog(std::string err_str){
    this->writeErrorLogImpl(err_str, "Producer");
}

/******************** getter and setter implement function ********************/
RdKafka::Conf *NseMqProducer::getProducerConf() const {
    return producer_conf_;
}

void NseMqProducer::setProducerConf(RdKafka::Conf *producerConf) {
    producer_conf_ = producerConf;
}

RdKafka::Producer *NseMqProducer::getProducer() const {
    return producer_;
}

void NseMqProducer::setProducer(RdKafka::Producer *producer) {
    producer_ = producer;
}

const std::string &NseMqProducer::getBrokerAddr() const {
    return broker_addr_;
}

void NseMqProducer::setBrokerAddr(const std::string &brokerAddr) {
    broker_addr_ = brokerAddr;
}

const std::string &NseMqProducer::getErrstr() {
    return errstr_;
}

void NseMqProducer::setErrstr(const std::string &errstr) {
    errstr_ = errstr;
}

RdKafka::DeliveryReportCb *NseMqProducer::getProducerDrCb() const {
    return producer_dr_cb_;
}

void NseMqProducer::setProducerDrCb(RdKafka::DeliveryReportCb *producerDrCb) {
    producer_dr_cb_ = producerDrCb;
}

int32_t NseMqProducer::getPartition() const {
    return partition_;
}

void NseMqProducer::setPartition(int32_t partition) {
    partition_ = partition;
}


