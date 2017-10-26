#!/bin/bash
#comienza el analisis con stacks teniendo en cuenta que no acepta barcodes de diferente tamaño y en este caso hay barcodes de 5, 6, 7 y 8 pb por lo que hay que correrlo 4 veces
#corro el process_radtags

cd /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/
mkdir process_radtags
cd process_radtags


limite=8
i=5
while [ $limite -ge $i ] 
do 
	
    echo ................................estoy en el ciclo $i
       
	# not merged   process_radtags -p /home/jorge/POPULATIONS_GENOMICS/MslI/RAW/raw_1 -o /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/process_radtags/ -b /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/barcodes/barcode_$i -c -s 20 -q --renz_1 msli --barcode_dist_1  0 -i fastq
    process_radtags -1 /home/jorge/POPULATIONS_GENOMICS/MslI/RAW/grep/MslI_R1_.fastq -2 /home/jorge/POPULATIONS_GENOMICS/MslI/RAW/grep/MslI_R2_.fastq -o /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/process_radtags/ -b /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/barcodes/barcode_$i -c -s 20 -q --renz_1 msli --barcode_dist_1  0 -i fastq

	
let i=$i+1
done

	
mkdir /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/fastqc/
cd /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/fastqc/

	
	perl /home/jorge/FastQC/fastqc /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/process_radtags/*.fq -o /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/fastqc/
				
echo .......................................... ahora los reads estan listos para ser usados en de_novo.pl 		


	
