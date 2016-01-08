#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.63])
AC_INIT([FULL-PACKAGE-NAME], [VERSION], [BUG-REPORT-ADDRESS])
AC_CONFIG_SRCDIR([config.h.in])
AC_CONFIG_HEADERS([config.h])
AM_INIT_AUTOMAKE

#if a compiler is not specified by the user use intel compilers
AC_PATH_PROG(CC_PATH, $CC, NO_PATH)
if test "$CC_PATH" = NO_PATH; then
   CC="mpicc"
   CXX="mpicxx"
   CFLAGS="-O3 -std=c99 -lm -march=core-avx2"
   CXXFLAGS="-O3 -std=c++11 -lm -march=core-avx2"
fi

# Checks for programs.
AC_PROG_CC
AC_PROG_CXX
AC_PROG_INSTALL
AC_PROG_AWK
AC_PROG_MKDIR_P


# Checks for libraries.

# Checks for header files.
AC_CHECK_HEADERS([unistd.h])

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

AC_CONFIG_FILES([Makefile
  src/Makefile])
AC_OUTPUT
