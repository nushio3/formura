cmake_minimum_required(VERSION 2.8)
project (formura_examples)

add_custom_command(
  OUTPUT examples/pearson.c
  COMMAND stack exec formura -- examples/pearson.fmr
  DEPENDS examples/pearson.fmr
  DEPENDS bin/formura
  )
add_custom_command(
  OUTPUT examples/diffusion.c
  COMMAND stack exec formura -- examples/diffusion.fmr
  DEPENDS examples/diffusion.fmr
  DEPENDS bin/formura
  )

add_executable(bin/pearson.out examples/pearson.c examples/pearson-main.cpp)
add_executable(bin/diffusion.out examples/diffusion.c examples/diffusion-main.cpp)
