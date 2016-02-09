cmake_minimum_required(VERSION 2.8)
project (formura_examples)

add_custom_target(formura ALL stack build)
add_custom_command(
  OUTPUT example/pearson.c
  COMMAND stack exec formura -- example/pearson.f31
  DEPENDS example/pearson.f31
  )
add_executable(bin/pearson.out example/pearson.c example/pearson-main.cpp)
