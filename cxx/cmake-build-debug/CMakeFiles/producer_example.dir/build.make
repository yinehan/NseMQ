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
CMAKE_SOURCE_DIR = E:\Project\NseMQ\cxx

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\Project\NseMQ\cxx\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\producer_example.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\producer_example.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\producer_example.dir\flags.make

CMakeFiles\producer_example.dir\examples\producer_example.cpp.obj: CMakeFiles\producer_example.dir\flags.make
CMakeFiles\producer_example.dir\examples\producer_example.cpp.obj: ..\examples\producer_example.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\Project\NseMQ\cxx\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/producer_example.dir/examples/producer_example.cpp.obj"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\producer_example.dir\examples\producer_example.cpp.obj /FdCMakeFiles\producer_example.dir\ /FS -c E:\Project\NseMQ\cxx\examples\producer_example.cpp
<<

CMakeFiles\producer_example.dir\examples\producer_example.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/producer_example.dir/examples/producer_example.cpp.i"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" > CMakeFiles\producer_example.dir\examples\producer_example.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E E:\Project\NseMQ\cxx\examples\producer_example.cpp
<<

CMakeFiles\producer_example.dir\examples\producer_example.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/producer_example.dir/examples/producer_example.cpp.s"
	"D:\Development\Visual Studio 2015\VC\bin\amd64\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\producer_example.dir\examples\producer_example.cpp.s /c E:\Project\NseMQ\cxx\examples\producer_example.cpp
<<

# Object files for target producer_example
producer_example_OBJECTS = \
"CMakeFiles\producer_example.dir\examples\producer_example.cpp.obj"

# External object files for target producer_example
producer_example_EXTERNAL_OBJECTS =

producer_example.exe: CMakeFiles\producer_example.dir\examples\producer_example.cpp.obj
producer_example.exe: CMakeFiles\producer_example.dir\build.make
producer_example.exe: NseMQ++.lib
producer_example.exe: CMakeFiles\producer_example.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\Project\NseMQ\cxx\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable producer_example.exe"
	"D:\Development\CLion\CLion 2020.2.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\producer_example.dir --rc=C:\PROGRA~2\WI3CF2~1\8.1\bin\x64\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\8.1\bin\x64\mt.exe --manifests  -- "D:\Development\Visual Studio 2015\VC\bin\amd64\link.exe" /nologo @CMakeFiles\producer_example.dir\objects1.rsp @<<
 /out:producer_example.exe /implib:producer_example.lib /pdb:E:\Project\NseMQ\cxx\cmake-build-debug\producer_example.pdb /version:0.0  /machine:x64 /debug /INCREMENTAL /subsystem:console   -LIBPATH:E:\Project\NseMQ\cxx\lib  -LIBPATH:D:\Program\boost1.72.0\boost_1_72_0\lib64-msvc-14.0  librdkafka.lib avrocpp.lib NseMQ++.lib librdkafka.lib avrocpp.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\producer_example.dir\build: producer_example.exe

.PHONY : CMakeFiles\producer_example.dir\build

CMakeFiles\producer_example.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\producer_example.dir\cmake_clean.cmake
.PHONY : CMakeFiles\producer_example.dir\clean

CMakeFiles\producer_example.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" E:\Project\NseMQ\cxx E:\Project\NseMQ\cxx E:\Project\NseMQ\cxx\cmake-build-debug E:\Project\NseMQ\cxx\cmake-build-debug E:\Project\NseMQ\cxx\cmake-build-debug\CMakeFiles\producer_example.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\producer_example.dir\depend

