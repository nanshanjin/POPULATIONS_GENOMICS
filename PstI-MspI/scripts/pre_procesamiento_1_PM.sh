#!/bin/bash
#Script para el preprocesamiento y procesamiento de la información del piloto de 12 muestras de coco con las 2 enzimas PstI-MspI GBS


# 1) Se extraen los reads que no pertenecen a nuestra libreria .............()   programa propio en bash
# 2) analisis de calidad phred quality score ...............................()   step 1 y 2 del pyrad
# 3) divido archivo por barcodes ...........................................()   step 1 y 2 del pyrad
# 4) filtro los reads que tienen intacto el sitio de restriccion ...........()   step 1 y 2 del pyrad
# 5) correr process_radtags (stacks) corro el fastqc a todos los archivos ..()   fastqc


#########################################################      1    #########################################################################################################################################
# los reads vienen con un barcode al inicio de la secuencia y con un indice en el encabezado, el indice dice de que libreria proviene cada read




cd /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/RAW



#se crea un archivo que tiene todos los indices que se pueden encontrar en los archivos RAW y como resultado encontramos que el 98% de los reads tienen el mismo indice (GGGGGGGG+TGCTTCCA), lo que sugiere
#que ese 2% de reads que no tienen dicho indice son contaminacion por lo que se deben retirar

mkdir grep

limite=2
i=1
while [ $limite -ge $i ] 
do

echo ................................. comprobando indices del archivo PM_R$[i].fastq.bz2 
bzcat PM_R$[i].fastq.bz2 | grep ^@NB | cut -d : -f 10 | sort | uniq -c | sort -nr > indice_$[i].txt
B[$i]=$(cat indice_$[i].txt | head -n 1 | cut -d ' '  -f 2)
echo el indice es ${B[i]}
echo .............................. filtrando el archivo PM_R$[i].fastq.bz2


# tengo que comprobar que el primer read de cada archivo coincide con el tag que busco, si es asi no pasa nada, de lo contrario hay 
# que quitarle al primer read la linea de calidad y ponerla al final del archivo

bzcat PM_R$[i].fastq.bz2 | grep "${B[i]}"  -B 1 -A 1 | sed 's/--/+/g'| sed -e '$a\+' > ./grep/PM_R$[i]_.fastq
A[$i]=$(head -n 1 ./grep/PM_R$[i]_.fastq)
echo borrando la primera linea 
sed -i '1d' ./grep/PM_R$[i]_.fastq
echo ${A[i]} >> ./grep/PM_R$[i]_.fastq

# compruebo que los indices dan bien 
echo .............................. comprobación indices del archivo $i 
grep ^@NB5 ./grep/PM_R$[i]_.fastq  | cut -d : -f 10 | sort | uniq -c | sort -nr > indice_$[i]_cut.txt

let i=$i+1
done 
echo corriendo el fastqc 
mkdir /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/fastqc/
mkdir /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/fastqc/RAW
perl /home/jorge/FastQC/fastqc  /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/RAW/grep/*.fastq -o /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/fastqc/RAW

