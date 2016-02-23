. /work/system/Env_base

fapp -C -d prof-2x-01 -Hpa=1 ./bin/pof-2x 
fapp -C -d prof-2x-02 -Hpa=2 ./bin/pof-2x 
fapp -C -d prof-2x-03 -Hpa=3 ./bin/pof-2x 
fapp -C -d prof-2x-04 -Hpa=4 ./bin/pof-2x 
fapp -C -d prof-2x-05 -Hpa=5 ./bin/pof-2x 
fapp -C -d prof-2x-06 -Hpa=6 ./bin/pof-2x 
fapp -C -d prof-2x-07 -Hpa=7 ./bin/pof-2x 

fapp -C -d prof-2y-01 -Hpa=1 ./bin/pof-2y 
fapp -C -d prof-2y-02 -Hpa=2 ./bin/pof-2y 
fapp -C -d prof-2y-03 -Hpa=3 ./bin/pof-2y 
fapp -C -d prof-2y-04 -Hpa=4 ./bin/pof-2y 
fapp -C -d prof-2y-05 -Hpa=5 ./bin/pof-2y 
fapp -C -d prof-2y-06 -Hpa=6 ./bin/pof-2y 
fapp -C -d prof-2y-07 -Hpa=7 ./bin/pof-2y 

fapp -C -d prof-2z-01 -Hpa=1 ./bin/pof-2z 
fapp -C -d prof-2z-02 -Hpa=2 ./bin/pof-2z 
fapp -C -d prof-2z-03 -Hpa=3 ./bin/pof-2z 
fapp -C -d prof-2z-04 -Hpa=4 ./bin/pof-2z 
fapp -C -d prof-2z-05 -Hpa=5 ./bin/pof-2z 
fapp -C -d prof-2z-06 -Hpa=6 ./bin/pof-2z 
fapp -C -d prof-2z-07 -Hpa=7 ./bin/pof-2z 

mkdir prof-csv-2x
fapppx -A -p all -l0 -d prof-2x-01 -o prof-csv-2x/output_prof_1.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-2x-02 -o prof-csv-2x/output_prof_2.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-2x-03 -o prof-csv-2x/output_prof_3.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-2x-04 -o prof-csv-2x/output_prof_4.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-2x-05 -o prof-csv-2x/output_prof_5.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-2x-06 -o prof-csv-2x/output_prof_6.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-2x-07 -o prof-csv-2x/output_prof_7.csv -tcsv -Hpa

mkdir prof-csv-2y
fapppx -A -p all -l0 -d prof-2y-01 -o prof-csv-2y/output_prof_1.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-2y-02 -o prof-csv-2y/output_prof_2.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-2y-03 -o prof-csv-2y/output_prof_3.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-2y-04 -o prof-csv-2y/output_prof_4.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-2y-05 -o prof-csv-2y/output_prof_5.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-2y-06 -o prof-csv-2y/output_prof_6.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-2y-07 -o prof-csv-2y/output_prof_7.csv -tcsv -Hpa

mkdir prof-csv-2z
fapppx -A -p all -l0 -d prof-2z-01 -o prof-csv-2z/output_prof_1.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-2z-02 -o prof-csv-2z/output_prof_2.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-2z-03 -o prof-csv-2z/output_prof_3.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-2z-04 -o prof-csv-2z/output_prof_4.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-2z-05 -o prof-csv-2z/output_prof_5.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-2z-06 -o prof-csv-2z/output_prof_6.csv -tcsv -Hpa
fapppx -A -p all -l0 -d prof-2z-07 -o prof-csv-2z/output_prof_7.csv -tcsv -Hpa


