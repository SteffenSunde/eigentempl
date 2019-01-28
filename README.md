# eigentempl 

This is a small and simplistic template for [Eigen](http://eigen.tuxfamily.org)-based project using CMake and C++. For testing, [Catch2](https://github.com/catchorg/Catch2) is used.

**Warning**: Compiling Catch2 is really slow using MinGW. 

## Todo
- [ ] Improve bash script
- [ ] Clean up ("modernize") cmake build scripts
- [ ] Auto-discovery of test cases
- [ ] Add Doxygen

## Usage
Clone this project, rename and make sure til have the following dependencies available.

To build and run project on Windows:
```console
./build.bat [msvc|mingw]
```
choose ```msvc``` for (default Visual Studio compiler) and ```mingw``` for MinGW makefiles.

to compile and run all test cases on Windows:
```console
./build.bat [msvc|mingw] tests
```

on Linux  (work in progress)
same usage with bash script ```build.sh```

## Dependencies

- [Eigen3](https://github.com/eigenteam/eigen-git-mirror): Install eigen library and add `<eigen install path>/share/eigen3/cmake` to the system environment variable `CMAKE_PREFIX_PATH`.
- [Catch2](https://github.com/catchorg/Catch2): For testing.  

Both Eigen3 and Catch2 are header only-libraries, which means that for CMake to find the necessary includes, it is only necessary to add their folder locations to the system environment variable ``CMAKE_INCLUDE_DIR``.