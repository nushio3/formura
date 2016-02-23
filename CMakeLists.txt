cmake_minimum_required(VERSION 2.8)
if(POLICY CMP0037)
  cmake_policy(SET CMP0037 OLD)
endif()

project (formura_examples)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O2 -std=c99 -Wall -mcmodel=large")
set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -O2 -Wall -mcmodel=large")

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
  DEPENDS examples/pearson.nc
  DEPENDS bin/formura
  )
add_custom_command(
  OUTPUT examples/av-mhd.c
  COMMAND stack exec formura -- examples/av-mhd.fmr
  DEPENDS examples/av-mhd.fmr
  DEPENDS bin/formura
  )
add_custom_command(
  OUTPUT examples/3d-mhd.c
  COMMAND stack exec formura -- examples/3d-mhd.fmr
  COMMAND sleep 1
  DEPENDS examples/3d-mhd.fmr
  DEPENDS bin/formura
  )


# add_executable(bin/diffusion.out examples/diffusion.c examples/diffusion-main.cpp)
add_executable(bin/pearson.out examples/pearson.c examples/pearson-main.cpp)
# add_executable(bin/av-mhd.out examples/av-mhd.c examples/av-mhd-main.cpp)
# add_executable(bin/3d-mhd.out examples/3d-mhd.c examples/3d-mhd-main.cpp)
