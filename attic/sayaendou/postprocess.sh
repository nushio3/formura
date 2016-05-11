fipppx -A  -Icpu,balance,call,hwm,src -d out/prof-ip > out/output_prof_ip.txt
fipppx -A  -Icpu,call,hwm -tcsv -d out/prof-ip > out/output_prof_ip.csv
fapppx -A  -l0 -tcsv -Hpa -d out/prof-01 -o out/output_prof_1.csv
fapppx -A  -l0 -tcsv -Hpa -d out/prof-02 -o out/output_prof_2.csv
fapppx -A  -l0 -tcsv -Hpa -d out/prof-03 -o out/output_prof_3.csv
fapppx -A  -l0 -tcsv -Hpa -d out/prof-04 -o out/output_prof_4.csv
fapppx -A  -l0 -tcsv -Hpa -d out/prof-05 -o out/output_prof_5.csv
fapppx -A  -l0 -tcsv -Hpa -d out/prof-06 -o out/output_prof_6.csv
fapppx -A  -l0 -tcsv -Hpa -d out/prof-07 -o out/output_prof_7.csv
fapppx -A -Impi  -ttext -d out/prof-mpi -o out/output_prof_mpi.txt
fapppx -A -Ihwm,nompi  -d out/prof-C -o out/output_prof_C.txt
fapppx -A -Ihwm,nompi  -d out/prof-I -o out/output_prof_I.txt
fapppx -A -Ihwm,nompi  -d out/prof-M -o out/output_prof_M.txt
fapppx -A -Ihwm,nompi  -d out/prof-P -o out/output_prof_P.txt

fapppx -A -Ihwm,nompi  -d out/prof-X3 -o out/output_prof_X3.txt

