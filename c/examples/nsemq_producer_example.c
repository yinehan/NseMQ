﻿#include <stdio.h>
#include "nsemq.h"
#include "cpx.h"

void produce_callback(char *msg_topic, void *msg_data, int msg_size){
    printf("this is produce_callback!\n");
    fprintf(stderr,"%% Message delivered (%d bytes, topic %s)\n",
    msg_size, msg_topic);
}

int main(){
    printf("*** main() start.\n");

    const char * topic_name = "test1";
    const char * broker_address = "localhost:9092";

    if(nsemq_producer_init(broker_address, produce_callback) != ERR_NO_ERROR){
        printf("initialize failed!\n");
        return -1;
    }

    nse_person_t *person = nse_person_create();
    person->name = kaa_string_copy_create("cmy");
    person->age = 24;

    nsemq_producer_produce(person, topic_name);
    
    nse_cpx_t *cpx = nse_cpx_create();
    cpx->im = 1996;
    cpx->re = 2020;
    cpx->s = nse_person_create();
    cpx->s->name = kaa_string_copy_create("cmy");
    cpx->s->age = 24;

    const char * topic_name2 = "test";
    nsemq_producer_produce(cpx, topic_name2);
    nsemq_producer_close();
}