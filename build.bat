@echo off

if "%1" == "" (
    echo Please specify compiler [msvc, mingw]
    exit
)

if "%1" == "msvc" (
    if not exist build\msvc (
        mkdir build\msvc
    )

    if "%2" == "tests" (
        echo Building and running all tests using Visual Studio
        cd build\msvc && cmake ..\.. && MSBuild.exe tests.vcxproj && cd Debug && tests.exe
        exit
    ) else (
        echo Building and running project using Visual Studio
        cd build\msvc && cmake ..\..\ && MSBuild.exe eigentempl.vcxproj && cd Debug && eigentempl.exe
        exit
    )
)

if "%1" == "mingw" (
    if not exist build\mingw (
        mkdir build\mingw
    )

    if "%2" == "tests" (
        echo Building and running all tests using MinGW Makefiles (SLOW with Catch2!!) && cd build\mingw && cmake ..\..\ -G "MinGW Makefiles" && make tests -j2 && tests.exe
    ) else "%2" == "" (
        echo Building and running project using MinGW Makefiles &&  cd build\mingw && cmake ..\..\ -G "MinGW Makefiles" && make eigentempl -j2 && eigentempl.exe
    )
) 
