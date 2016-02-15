cmake_minimum_required(VERSION 2.8)
project (formura_examples)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O3 -mcmodel=large")
set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -O3 -mcmodel=large")

add_custom_command(
  OUTPUT examples/diffusion.c
  COMMAND stack exec formura -- examples/diffusion.fmr
  DEPENDS examples/diffusion.fmr
  DEPENDS bin/formura
  )
add_custom_command(
  OUTPUT examples/pearson.c
  COMMAND stack exec formura -- examples/pearson.fmr
  DEPENDS examples/pearson.fmr
  DEPENDS bin/formura
  )
add_custom_command(
  OUTPUT examples/hydro.c
  COMMAND stack exec formura -- examples/hydro.fmr
  DEPENDS examples/hydro.fmr
  DEPENDS bin/formura
  )
add_custom_command(
  OUTPUT examples/mhd.c
  COMMAND stack exec formura -- examples/mhd.fmr
  DEPENDS examples/mhd.fmr
  DEPENDS bin/formura
  )
add_custom_command(
  OUTPUT examples/av-mhd.c
  COMMAND stack exec formura -- examples/av-mhd.fmr
  DEPENDS examples/av-mhd.fmr
  DEPENDS bin/formura
  )


add_executable(bin/diffusion.out examples/diffusion.c examples/diffusion-main.cpp)
add_executable(bin/pearson.out examples/pearson.c examples/pearson-main.cpp)
add_executable(bin/hydro.out examples/hydro.c examples/hydro-main.cpp)
add_executable(bin/mhd.out examples/mhd.c examples/mhd-main.cpp)
add_executable(bin/av-mhd.out examples/av-mhd.c examples/av-mhd-main.cpp)
