# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Development\CLion\CLion 2020.2.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Development\CLion\CLion 2020.2.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\Project\NseMQ\c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\Project\NseMQ\c\cmake-build-debug-vs-2015

# Include any dependencies generated for this target.
include CMakeFiles\NseMQ.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\NseMQ.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\NseMQ.dir\flags.make

CMakeFiles\NseMQ.dir\src\encoding_binary.c.obj: CMakeFiles\NseMQ.dir\flags.make
CMakeFiles\NseMQ.dir\src\encoding_binary.c.obj: ..\src\encoding_binary.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Project\NseMQ\c\cmake-build-debug-vs-2015\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/NseMQ.dir/src/encoding_binary.c.obj"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\NseMQ.dir\src\encoding_binary.c.obj /FdCMakeFiles\NseMQ.dir\ /FS -c E:\Project\NseMQ\c\src\encoding_binary.c
<<

CMakeFiles\NseMQ.dir\src\encoding_binary.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NseMQ.dir/src/encoding_binary.c.i"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" > CMakeFiles\NseMQ.dir\src\encoding_binary.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Project\NseMQ\c\src\encoding_binary.c
<<

CMakeFiles\NseMQ.dir\src\encoding_binary.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NseMQ.dir/src/encoding_binary.c.s"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\NseMQ.dir\src\encoding_binary.c.s /c E:\Project\NseMQ\c\src\encoding_binary.c
<<

CMakeFiles\NseMQ.dir\src\io.c.obj: CMakeFiles\NseMQ.dir\flags.make
CMakeFiles\NseMQ.dir\src\io.c.obj: ..\src\io.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Project\NseMQ\c\cmake-build-debug-vs-2015\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/NseMQ.dir/src/io.c.obj"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\NseMQ.dir\src\io.c.obj /FdCMakeFiles\NseMQ.dir\ /FS -c E:\Project\NseMQ\c\src\io.c
<<

CMakeFiles\NseMQ.dir\src\io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NseMQ.dir/src/io.c.i"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" > CMakeFiles\NseMQ.dir\src\io.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Project\NseMQ\c\src\io.c
<<

CMakeFiles\NseMQ.dir\src\io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NseMQ.dir/src/io.c.s"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\NseMQ.dir\src\io.c.s /c E:\Project\NseMQ\c\src\io.c
<<

CMakeFiles\NseMQ.dir\src\kaa_list.c.obj: CMakeFiles\NseMQ.dir\flags.make
CMakeFiles\NseMQ.dir\src\kaa_list.c.obj: ..\src\kaa_list.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Project\NseMQ\c\cmake-build-debug-vs-2015\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/NseMQ.dir/src/kaa_list.c.obj"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\NseMQ.dir\src\kaa_list.c.obj /FdCMakeFiles\NseMQ.dir\ /FS -c E:\Project\NseMQ\c\src\kaa_list.c
<<

CMakeFiles\NseMQ.dir\src\kaa_list.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NseMQ.dir/src/kaa_list.c.i"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" > CMakeFiles\NseMQ.dir\src\kaa_list.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Project\NseMQ\c\src\kaa_list.c
<<

CMakeFiles\NseMQ.dir\src\kaa_list.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NseMQ.dir/src/kaa_list.c.s"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\NseMQ.dir\src\kaa_list.c.s /c E:\Project\NseMQ\c\src\kaa_list.c
<<

CMakeFiles\NseMQ.dir\src\kaa_mem.c.obj: CMakeFiles\NseMQ.dir\flags.make
CMakeFiles\NseMQ.dir\src\kaa_mem.c.obj: ..\src\kaa_mem.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Project\NseMQ\c\cmake-build-debug-vs-2015\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/NseMQ.dir/src/kaa_mem.c.obj"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\NseMQ.dir\src\kaa_mem.c.obj /FdCMakeFiles\NseMQ.dir\ /FS -c E:\Project\NseMQ\c\src\kaa_mem.c
<<

CMakeFiles\NseMQ.dir\src\kaa_mem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NseMQ.dir/src/kaa_mem.c.i"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" > CMakeFiles\NseMQ.dir\src\kaa_mem.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Project\NseMQ\c\src\kaa_mem.c
<<

CMakeFiles\NseMQ.dir\src\kaa_mem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NseMQ.dir/src/kaa_mem.c.s"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\NseMQ.dir\src\kaa_mem.c.s /c E:\Project\NseMQ\c\src\kaa_mem.c
<<

CMakeFiles\NseMQ.dir\src\kaa_common_schema.c.obj: CMakeFiles\NseMQ.dir\flags.make
CMakeFiles\NseMQ.dir\src\kaa_common_schema.c.obj: ..\src\kaa_common_schema.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Project\NseMQ\c\cmake-build-debug-vs-2015\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/NseMQ.dir/src/kaa_common_schema.c.obj"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\NseMQ.dir\src\kaa_common_schema.c.obj /FdCMakeFiles\NseMQ.dir\ /FS -c E:\Project\NseMQ\c\src\kaa_common_schema.c
<<

CMakeFiles\NseMQ.dir\src\kaa_common_schema.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NseMQ.dir/src/kaa_common_schema.c.i"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" > CMakeFiles\NseMQ.dir\src\kaa_common_schema.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Project\NseMQ\c\src\kaa_common_schema.c
<<

CMakeFiles\NseMQ.dir\src\kaa_common_schema.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NseMQ.dir/src/kaa_common_schema.c.s"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\NseMQ.dir\src\kaa_common_schema.c.s /c E:\Project\NseMQ\c\src\kaa_common_schema.c
<<

CMakeFiles\NseMQ.dir\src\nsemq_base.c.obj: CMakeFiles\NseMQ.dir\flags.make
CMakeFiles\NseMQ.dir\src\nsemq_base.c.obj: ..\src\nsemq_base.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Project\NseMQ\c\cmake-build-debug-vs-2015\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/NseMQ.dir/src/nsemq_base.c.obj"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\NseMQ.dir\src\nsemq_base.c.obj /FdCMakeFiles\NseMQ.dir\ /FS -c E:\Project\NseMQ\c\src\nsemq_base.c
<<

CMakeFiles\NseMQ.dir\src\nsemq_base.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NseMQ.dir/src/nsemq_base.c.i"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" > CMakeFiles\NseMQ.dir\src\nsemq_base.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Project\NseMQ\c\src\nsemq_base.c
<<

CMakeFiles\NseMQ.dir\src\nsemq_base.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NseMQ.dir/src/nsemq_base.c.s"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\NseMQ.dir\src\nsemq_base.c.s /c E:\Project\NseMQ\c\src\nsemq_base.c
<<

CMakeFiles\NseMQ.dir\src\nsemq_producer.c.obj: CMakeFiles\NseMQ.dir\flags.make
CMakeFiles\NseMQ.dir\src\nsemq_producer.c.obj: ..\src\nsemq_producer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Project\NseMQ\c\cmake-build-debug-vs-2015\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/NseMQ.dir/src/nsemq_producer.c.obj"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\NseMQ.dir\src\nsemq_producer.c.obj /FdCMakeFiles\NseMQ.dir\ /FS -c E:\Project\NseMQ\c\src\nsemq_producer.c
<<

CMakeFiles\NseMQ.dir\src\nsemq_producer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NseMQ.dir/src/nsemq_producer.c.i"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" > CMakeFiles\NseMQ.dir\src\nsemq_producer.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Project\NseMQ\c\src\nsemq_producer.c
<<

CMakeFiles\NseMQ.dir\src\nsemq_producer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NseMQ.dir/src/nsemq_producer.c.s"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\NseMQ.dir\src\nsemq_producer.c.s /c E:\Project\NseMQ\c\src\nsemq_producer.c
<<

CMakeFiles\NseMQ.dir\src\nsemq_consumer.c.obj: CMakeFiles\NseMQ.dir\flags.make
CMakeFiles\NseMQ.dir\src\nsemq_consumer.c.obj: ..\src\nsemq_consumer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Project\NseMQ\c\cmake-build-debug-vs-2015\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/NseMQ.dir/src/nsemq_consumer.c.obj"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\NseMQ.dir\src\nsemq_consumer.c.obj /FdCMakeFiles\NseMQ.dir\ /FS -c E:\Project\NseMQ\c\src\nsemq_consumer.c
<<

CMakeFiles\NseMQ.dir\src\nsemq_consumer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NseMQ.dir/src/nsemq_consumer.c.i"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" > CMakeFiles\NseMQ.dir\src\nsemq_consumer.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Project\NseMQ\c\src\nsemq_consumer.c
<<

CMakeFiles\NseMQ.dir\src\nsemq_consumer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NseMQ.dir/src/nsemq_consumer.c.s"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\NseMQ.dir\src\nsemq_consumer.c.s /c E:\Project\NseMQ\c\src\nsemq_consumer.c
<<

CMakeFiles\NseMQ.dir\src\uuid4.c.obj: CMakeFiles\NseMQ.dir\flags.make
CMakeFiles\NseMQ.dir\src\uuid4.c.obj: ..\src\uuid4.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Project\NseMQ\c\cmake-build-debug-vs-2015\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/NseMQ.dir/src/uuid4.c.obj"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\NseMQ.dir\src\uuid4.c.obj /FdCMakeFiles\NseMQ.dir\ /FS -c E:\Project\NseMQ\c\src\uuid4.c
<<

CMakeFiles\NseMQ.dir\src\uuid4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NseMQ.dir/src/uuid4.c.i"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" > CMakeFiles\NseMQ.dir\src\uuid4.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\Project\NseMQ\c\src\uuid4.c
<<

CMakeFiles\NseMQ.dir\src\uuid4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NseMQ.dir/src/uuid4.c.s"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\NseMQ.dir\src\uuid4.c.s /c E:\Project\NseMQ\c\src\uuid4.c
<<

# Object files for target NseMQ
NseMQ_OBJECTS = \
"CMakeFiles\NseMQ.dir\src\encoding_binary.c.obj" \
"CMakeFiles\NseMQ.dir\src\io.c.obj" \
"CMakeFiles\NseMQ.dir\src\kaa_list.c.obj" \
"CMakeFiles\NseMQ.dir\src\kaa_mem.c.obj" \
"CMakeFiles\NseMQ.dir\src\kaa_common_schema.c.obj" \
"CMakeFiles\NseMQ.dir\src\nsemq_base.c.obj" \
"CMakeFiles\NseMQ.dir\src\nsemq_producer.c.obj" \
"CMakeFiles\NseMQ.dir\src\nsemq_consumer.c.obj" \
"CMakeFiles\NseMQ.dir\src\uuid4.c.obj"

# External object files for target NseMQ
NseMQ_EXTERNAL_OBJECTS =

NseMQ.dll: CMakeFiles\NseMQ.dir\src\encoding_binary.c.obj
NseMQ.dll: CMakeFiles\NseMQ.dir\src\io.c.obj
NseMQ.dll: CMakeFiles\NseMQ.dir\src\kaa_list.c.obj
NseMQ.dll: CMakeFiles\NseMQ.dir\src\kaa_mem.c.obj
NseMQ.dll: CMakeFiles\NseMQ.dir\src\kaa_common_schema.c.obj
NseMQ.dll: CMakeFiles\NseMQ.dir\src\nsemq_base.c.obj
NseMQ.dll: CMakeFiles\NseMQ.dir\src\nsemq_producer.c.obj
NseMQ.dll: CMakeFiles\NseMQ.dir\src\nsemq_consumer.c.obj
NseMQ.dll: CMakeFiles\NseMQ.dir\src\uuid4.c.obj
NseMQ.dll: CMakeFiles\NseMQ.dir\build.make
NseMQ.dll: CMakeFiles\NseMQ.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\Project\NseMQ\c\cmake-build-debug-vs-2015\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking C shared library NseMQ.dll"
	"D:\Development\CLion\CLion 2020.2.1\bin\cmake\win\bin\cmake.exe" -E vs_link_dll --intdir=CMakeFiles\NseMQ.dir --rc=C:\PROGRA~2\WI3CF2~1\8.1\bin\x64\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\8.1\bin\x64\mt.exe --manifests  -- "D:\Development\Visual Studio 2015\VC\bin\amd64\link.exe" /nologo @CMakeFiles\NseMQ.dir\objects1.rsp @<<
 /out:NseMQ.dll /implib:NseMQ.lib /pdb:E:\Project\NseMQ\c\cmake-build-debug-vs-2015\NseMQ.pdb /dll /version:0.0 /machine:x64 /debug /INCREMENTAL   -LIBPATH:E:\Project\NseMQ\c\lib  librdkafka.lib pthreadVC2.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib  
<<

# Rule to build all files generated by this target.
CMakeFiles\NseMQ.dir\build: NseMQ.dll

.PHONY : CMakeFiles\NseMQ.dir\build

CMakeFiles\NseMQ.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\NseMQ.dir\cmake_clean.cmake
.PHONY : CMakeFiles\NseMQ.dir\clean

CMakeFiles\NseMQ.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" E:\Project\NseMQ\c E:\Project\NseMQ\c E:\Project\NseMQ\c\cmake-build-debug-vs-2015 E:\Project\NseMQ\c\cmake-build-debug-vs-2015 E:\Project\NseMQ\c\cmake-build-debug-vs-2015\CMakeFiles\NseMQ.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\NseMQ.dir\depend

