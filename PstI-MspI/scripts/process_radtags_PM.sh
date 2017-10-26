#!/bin/bash
#comienza el analisis con stacks teniendo en cuenta que no acepta barcodes de diferente tamaño y en este caso hay barcodes de 4, 5, 6, 7, 8, 9 pb por lo que hay que correrlo 4 veces
#corro el process_radtags

mkdir /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/
cd /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/
mkdir process_radtags                                                                                    
cd process_radtags

limite=9
i=4
while [ $limite -ge $i ] 
do 
	
    echo ................................estoy en el ciclo $i
    
    
	process_radtags -1 /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/RAW/grep/PM_R1_.fastq -2 /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/RAW/grep/PM_R2_.fastq -o /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/ -b /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/barcodes/barcode_$i -c -s 20 -q --renz_1 pstI --renz_2 mspI --barcode_dist_1  0 -i fastq

let i=$i+1
done

			
mkdir /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/fastqc/
cd /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/fastqc/

	
	perl /home/jorge/FastQC/fastqc /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/*.fq -o /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/fastqc/
				
echo .......................................... ahora los reads estan  listos para ser usados en de_novo.pl 		






	
