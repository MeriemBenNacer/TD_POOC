cmake_minimum_required(VERSION 3.10)

# set the project name
project(Tutorial)

# enable modern C++
set(CMAKE_CXX_STANDARD 17)

# add the executable
add_executable(Main.exe main.cpp HypreExample.cpp HypreExemple.h PETScExemple.cpp PETScExemple.h)



