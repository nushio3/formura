bin_PROGRAMS = $(top_builddir)/bin/pearson.out

__top_builddir__bin_pearson_out_SOURCES=pearson-main.cpp pearson.c

pearson.c: pearson.f31
	stack exec formura -- pearson.f31
