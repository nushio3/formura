mpiFCCpx -Kfast -S test.c
grep '\%f'  test.s | grep -v 'ldd' | grep -v 'std'
