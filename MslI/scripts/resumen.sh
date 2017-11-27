#!/bin/bash
dirbase="/home/jorge/POPULATIONS_GENOMICS"
dirbase2="$dirbase/MslI/ipyrad/MslI_1/"
cd $dirbase2
pwd
rm  "$dirbase2/resumen.txt"

locate -br reference_stats.txt$ > "$dirbase2/lista_1.txt"

mapfile -t lista_outfiles < "$dirbase2/lista_1.txt"


echo la longitud de array es ${#lista_outfiles[@]} # cantidad de corridas en ipyrad

i=0
while [ $i -lt ${#lista_outfiles[@]}  ] 
do
echo  ciclo "$i"

echo ${lista_outfiles[i]} > "$dirbase2/resumen$i.txt"
tail ${lista_outfiles[i]} -n 13 >> "$dirbase2/resumen$i.txt"
echo "" >> "$dirbase2/resumen$i.txt"
grep ^total_filtered_loci ${lista_outfiles[i]} >> "$dirbase2/resumen$i.txt"


#Rscript "$dirbase/MslI/scripts/resumen.r"


let i=$i+1
done

