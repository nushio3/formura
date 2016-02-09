cmake_minimum_required(VERSION 2.8)
project (formura_examples)

add_custom_target(formura ALL stack build)
add_custom_command(
  OUTPUT examples/pearson.c
  COMMAND stack exec formura -- examples/pearson.f31
  DEPENDS examples/pearson.f31 ./bin/formura
  )
add_custom_command(
  OUTPUT examples/diffusion.c
  COMMAND stack exec formura -- examples/diffusion.f31
  DEPENDS examples/diffusion.f31 ./bin/formura
  )
add_executable(bin/pearson.out examples/pearson.c examples/pearson-main.cpp)
add_executable(bin/diffusion.out examples/diffusion.c examples/diffusion-main.cpp)
