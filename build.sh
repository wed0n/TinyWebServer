#!/bin/bash

cmake -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE\
 -DCMAKE_C_COMPILER=clang\
 -DCMAKE_CXX_COMPILER=clang++\
 -Bbuild
cd build;make

# rm -rf CMakeFiles/ cmake_install.cmake CMakeCache.txt Makefile