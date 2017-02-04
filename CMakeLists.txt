cmake_minimum_required(VERSION 2.8)
if(POLICY CMP0037)
  cmake_policy(SET CMP0037 OLD)
endif()

project (formura_examples)

set(CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}   -I fj_dummy -O2 -Wall -Wno-unknown-pragmas -mcmodel=large -std=c99 ")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -I fj_dummy -O2 -Wall -Wno-unknown-pragmas -mcmodel=large")

# add_custom_command(
#   OUTPUT examples/diffusion.c
#   COMMAND stack exec formura -- examples/diffusion.fmr
#   DEPENDS examples/diffusion.fmr
#   DEPENDS bin/formura
#   )
# add_custom_command(
#   OUTPUT examples/pearson.c
#   COMMAND stack exec formura -- examples/pearson.fmr --sleep 1
#   DEPENDS examples/pearson.fmr
#   DEPENDS examples/pearson.yaml
#   DEPENDS bin/formura
#   )
# add_custom_command(
#   OUTPUT examples/av-mhd.c
#   COMMAND stack exec formura -- examples/av-mhd.fmr
#   DEPENDS examples/av-mhd.fmr
#   DEPENDS bin/formura
#   )
# add_custom_command(
#   OUTPUT examples/2d-mhd.c
#   COMMAND stack exec formura -- examples/2d-mhd.fmr --sleep 1
#   DEPENDS examples/2d-mhd.fmr
#   DEPENDS bin/formura
#   )
# add_custom_command(
#   OUTPUT examples/3d-mhd.c
#   COMMAND stack exec formura -- examples/3d-mhd.fmr --sleep 1
#   COMMAND sleep 1
#   DEPENDS examples/3d-mhd.fmr
#   DEPENDS bin/formura
#   )
add_custom_command(
  OUTPUT examples/pearson-3d.c
  COMMAND stack exec formura -- examples/pearson-3d.fmr --sleep 1
  COMMAND sleep 1
  DEPENDS examples/pearson-3d.fmr
  DEPENDS bin/formura
  )



# add_executable(bin/pearson-3d-native.out attic/pearson-3d-native/main.c)
# add_executable(bin/diffusion.out examples/diffusion.c examples/diffusion-main.cpp)

# FILE(GLOB PearsonCSources examples/pearson-2d*.c)
# add_executable(bin/pearson-2d.out ${PearsonCSources} examples/pearson-2d-main.cpp)
# FILE(GLOB MHD2DSources examples/2d-mhd*.c)
# add_executable(bin/2d-mhd.out ${MHD2DSources} examples/2d-mhd-main.cpp)
# add_executable(bin/av-mhd.out examples/av-mhd.c examples/av-mhd-main.cpp)
# FILE(GLOB MHD3DSources examples/3d-mhd*.c)
# add_executable(bin/3d-mhd.out ${MHD3DSources} examples/3d-mhd-main.cpp)
FILE(GLOB PEARSON3DSources examples/pearson-3d*.c)
add_executable(bin/pearson-3d.out ${PEARSON3DSources} examples/pearson-3d-main.cpp)
#FILE(GLOB PEARSON3DSources examples/3d-localsun*.c)
#add_executable(bin/3d-localsun.out ${PEARSON3DSources} examples/3d-localsun-main.cpp)
# FILE(GLOB PEARSON3DSources examples/good*.c)
# add_executable(bin/good.out ${PEARSON3DSources} examples/good-main.cpp)
#
