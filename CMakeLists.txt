cmake_minimum_required(VERSION 2.8)
project (formura_examples)

add_custom_target(formura ALL stack build)
add_executable(bin/pearson.out example/pearson.c example/pearson-main.cpp)
