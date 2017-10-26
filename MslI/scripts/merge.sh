#!/bin/bash
mkdir /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/Merged
mkdir /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/Merged/params
cd /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/Merged/params

limite=9
i=1 

# construyo los nuevos sets de parametros

while [ $limite -ge $i ] 
do 
    ipyrad -n Merged_$i
	sed -i '/\[1] /c\/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/Merged/MslI_'$i'  	## [1] [project_dir] ' 	   params-Merged_$i.txt
	sed -i '/\[2] /c\/home/jorge/POPULATIONS_GENOMICS/MslI/RAW/*grep.fastq          	## [2] [raw_fastq_path]: ' params-Merged_$i.txt
	sed -i '/\[3] /c\/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/barcodes/barcodes     ## [3] [barcodes_path]: ' params-Merged_$i.txt 
	sed -i '/\[7] /c\pairgbs                                                            ## [7] [data_type]: ' params-Merged_$i.txt 
	sed -i '/\[11] /c\20                                                                ## [11] [mindepth_statistical]: ' params-Merged_$i.txt	
	sed -i '/\[12] /c\20                                                                ## [12] [mindepth_majrule]: ' params-Merged_$i.txt	
	sed -i '/\[16] /c\2                                                                ##  [16] [filter_adapters]: ' params-Merged_$i.txt	
	sed -i '/\[27] /c\*                                                               ##  [27] [output_formats]: ' params-Merged_$i.txt	
											 
let i=$i+1
done

	sed -i '/\[8] /c\RRRTG,                                                                ##  [8] [restriction_overhang]: ' params-Merged_1.txt	
	sed -i '/\[8] /c\RCRTG,                                                                ##  [8] [restriction_overhang]: ' params-Merged_2.txt	
	sed -i '/\[8] /c\RTRTG,                                                                ##  [8] [restriction_overhang]: ' params-Merged_3.txt	
	sed -i '/\[8] /c\CRRTG,                                                                ##  [8] [restriction_overhang]: ' params-Merged_4.txt	
	sed -i '/\[8] /c\CCRTG,                                                                ##  [8] [restriction_overhang]: ' params-Merged_5.txt	
	sed -i '/\[8] /c\CTRTG,                                                                ##  [8] [restriction_overhang]: ' params-Merged_6.txt	
	sed -i '/\[8] /c\TRRTG,                                                                ##  [8] [restriction_overhang]: ' params-Merged_7.txt	
	sed -i '/\[8] /c\TCRTG,                                                                ##  [8] [restriction_overhang]: ' params-Merged_8.txt	
	sed -i '/\[8] /c\TTRTG,                                                                ##  [8] [restriction_overhang]: ' params-Merged_9.txt	



# paso 1 del ipyrad
cd /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/Merged

# creo los ensambles en pyrad teniendo en cuenta que hay que correrlo 9 veces para poder tener en cuenta todos los sitios de la enzima de restriccion  (NNRTG EN TERMINOS DE ATGC Y R (R=A o G))
# en otras palabras NNRTG = RRRTG, RCRTG, RTRTG, CRRTG, CCRTG, CTRTG, TRRTG, TCRTG, TTRTG. A cada muestra le corro el fastqc.

limite=9
i=1
while [ $limite -ge $i ]
do
 	ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/Merged/params/params-Merged_$i.txt -r -f -s 1
	
let i=$i+1
done

echo ...................................... el paso 1 del ipyrad ha sido completado con exito ahora hay que hacer unos zcat para juntar las diferentes corridas y quedar con 2 archivos por muestra




zcat ./MslI_1/Merged_1_fastqs/A03_R1_.fastq.gz ./MslI_2/Merged_2_fastqs/A03_R1_.fastq.gz ./MslI_3/Merged_3_fastqs/A03_R1_.fastq.gz ./MslI_4/Merged_4_fastqs/A03_R1_.fastq.gz ./MslI_5/Merged_5_fastqs/A03_R1_.fastq.gz ./MslI_6/Merged_6_fastqs/A03_R1_.fastq.gz ./MslI_7/Merged_7_fastqs/A03_R1_.fastq.gz ./MslI_8/Merged_8_fastqs/A03_R1_.fastq.gz ./MslI_9/Merged_9_fastqs/A03_R1_.fastq.gz > A03_R1_.fastq
zcat ./MslI_1/Merged_1_fastqs/A03_R2_.fastq.gz ./MslI_2/Merged_2_fastqs/A03_R2_.fastq.gz ./MslI_3/Merged_3_fastqs/A03_R2_.fastq.gz ./MslI_4/Merged_4_fastqs/A03_R2_.fastq.gz ./MslI_5/Merged_5_fastqs/A03_R2_.fastq.gz ./MslI_6/Merged_6_fastqs/A03_R2_.fastq.gz ./MslI_7/Merged_7_fastqs/A03_R2_.fastq.gz ./MslI_8/Merged_8_fastqs/A03_R2_.fastq.gz ./MslI_9/Merged_9_fastqs/A03_R2_.fastq.gz > A03_R2_.fastq

zcat ./MslI_1/Merged_1_fastqs/B03_R1_.fastq.gz ./MslI_2/Merged_2_fastqs/B03_R1_.fastq.gz ./MslI_3/Merged_3_fastqs/B03_R1_.fastq.gz ./MslI_4/Merged_4_fastqs/B03_R1_.fastq.gz ./MslI_5/Merged_5_fastqs/B03_R1_.fastq.gz ./MslI_6/Merged_6_fastqs/B03_R1_.fastq.gz ./MslI_7/Merged_7_fastqs/B03_R1_.fastq.gz ./MslI_8/Merged_8_fastqs/B03_R1_.fastq.gz ./MslI_9/Merged_9_fastqs/B03_R1_.fastq.gz > B03_R1_.fastq
zcat ./MslI_1/Merged_1_fastqs/B03_R2_.fastq.gz ./MslI_2/Merged_2_fastqs/B03_R2_.fastq.gz ./MslI_3/Merged_3_fastqs/B03_R2_.fastq.gz ./MslI_4/Merged_4_fastqs/B03_R2_.fastq.gz ./MslI_5/Merged_5_fastqs/B03_R2_.fastq.gz ./MslI_6/Merged_6_fastqs/B03_R2_.fastq.gz ./MslI_7/Merged_7_fastqs/B03_R2_.fastq.gz ./MslI_8/Merged_8_fastqs/B03_R2_.fastq.gz ./MslI_9/Merged_9_fastqs/B03_R2_.fastq.gz > B03_R2_.fastq

zcat ./MslI_1/Merged_1_fastqs/C03_R1_.fastq.gz ./MslI_2/Merged_2_fastqs/C03_R1_.fastq.gz ./MslI_3/Merged_3_fastqs/C03_R1_.fastq.gz ./MslI_4/Merged_4_fastqs/C03_R1_.fastq.gz ./MslI_5/Merged_5_fastqs/C03_R1_.fastq.gz ./MslI_6/Merged_6_fastqs/C03_R1_.fastq.gz ./MslI_7/Merged_7_fastqs/C03_R1_.fastq.gz ./MslI_8/Merged_8_fastqs/C03_R1_.fastq.gz ./MslI_9/Merged_9_fastqs/C03_R1_.fastq.gz > C03_R1_.fastq
zcat ./MslI_1/Merged_1_fastqs/C03_R2_.fastq.gz ./MslI_2/Merged_2_fastqs/C03_R2_.fastq.gz ./MslI_3/Merged_3_fastqs/C03_R2_.fastq.gz ./MslI_4/Merged_4_fastqs/C03_R2_.fastq.gz ./MslI_5/Merged_5_fastqs/C03_R2_.fastq.gz ./MslI_6/Merged_6_fastqs/C03_R2_.fastq.gz ./MslI_7/Merged_7_fastqs/C03_R2_.fastq.gz ./MslI_8/Merged_8_fastqs/C03_R2_.fastq.gz ./MslI_9/Merged_9_fastqs/C03_R2_.fastq.gz > C03_R2_.fastq

zcat ./MslI_1/Merged_1_fastqs/D03_R1_.fastq.gz ./MslI_2/Merged_2_fastqs/D03_R1_.fastq.gz ./MslI_3/Merged_3_fastqs/D03_R1_.fastq.gz ./MslI_4/Merged_4_fastqs/D03_R1_.fastq.gz ./MslI_5/Merged_5_fastqs/D03_R1_.fastq.gz ./MslI_6/Merged_6_fastqs/D03_R1_.fastq.gz ./MslI_7/Merged_7_fastqs/D03_R1_.fastq.gz ./MslI_8/Merged_8_fastqs/D03_R1_.fastq.gz ./MslI_9/Merged_9_fastqs/D03_R1_.fastq.gz > D03_R1_.fastq
zcat ./MslI_1/Merged_1_fastqs/D03_R2_.fastq.gz ./MslI_2/Merged_2_fastqs/D03_R2_.fastq.gz ./MslI_3/Merged_3_fastqs/D03_R2_.fastq.gz ./MslI_4/Merged_4_fastqs/D03_R2_.fastq.gz ./MslI_5/Merged_5_fastqs/D03_R2_.fastq.gz ./MslI_6/Merged_6_fastqs/D03_R2_.fastq.gz ./MslI_7/Merged_7_fastqs/D03_R2_.fastq.gz ./MslI_8/Merged_8_fastqs/D03_R2_.fastq.gz ./MslI_9/Merged_9_fastqs/D03_R2_.fastq.gz > D03_R2_.fastq

zcat ./MslI_1/Merged_1_fastqs/E02_R1_.fastq.gz ./MslI_2/Merged_2_fastqs/E02_R1_.fastq.gz ./MslI_3/Merged_3_fastqs/E02_R1_.fastq.gz ./MslI_4/Merged_4_fastqs/E02_R1_.fastq.gz ./MslI_5/Merged_5_fastqs/E02_R1_.fastq.gz ./MslI_6/Merged_6_fastqs/E02_R1_.fastq.gz ./MslI_7/Merged_7_fastqs/E02_R1_.fastq.gz ./MslI_8/Merged_8_fastqs/E02_R1_.fastq.gz ./MslI_9/Merged_9_fastqs/E02_R1_.fastq.gz > E02_R1_.fastq
zcat ./MslI_1/Merged_1_fastqs/E02_R2_.fastq.gz ./MslI_2/Merged_2_fastqs/E02_R2_.fastq.gz ./MslI_3/Merged_3_fastqs/E02_R2_.fastq.gz ./MslI_4/Merged_4_fastqs/E02_R2_.fastq.gz ./MslI_5/Merged_5_fastqs/E02_R2_.fastq.gz ./MslI_6/Merged_6_fastqs/E02_R2_.fastq.gz ./MslI_7/Merged_7_fastqs/E02_R2_.fastq.gz ./MslI_8/Merged_8_fastqs/E02_R2_.fastq.gz ./MslI_9/Merged_9_fastqs/E02_R2_.fastq.gz > E02_R2_.fastq

zcat ./MslI_1/Merged_1_fastqs/E03_R1_.fastq.gz ./MslI_2/Merged_2_fastqs/E03_R1_.fastq.gz ./MslI_3/Merged_3_fastqs/E03_R1_.fastq.gz ./MslI_4/Merged_4_fastqs/E03_R1_.fastq.gz ./MslI_5/Merged_5_fastqs/E03_R1_.fastq.gz ./MslI_6/Merged_6_fastqs/E03_R1_.fastq.gz ./MslI_7/Merged_7_fastqs/E03_R1_.fastq.gz ./MslI_8/Merged_8_fastqs/E03_R1_.fastq.gz ./MslI_9/Merged_9_fastqs/E03_R1_.fastq.gz > E03_R1_.fastq
zcat ./MslI_1/Merged_1_fastqs/E03_R2_.fastq.gz ./MslI_2/Merged_2_fastqs/E03_R2_.fastq.gz ./MslI_3/Merged_3_fastqs/E03_R2_.fastq.gz ./MslI_4/Merged_4_fastqs/E03_R2_.fastq.gz ./MslI_5/Merged_5_fastqs/E03_R2_.fastq.gz ./MslI_6/Merged_6_fastqs/E03_R2_.fastq.gz ./MslI_7/Merged_7_fastqs/E03_R2_.fastq.gz ./MslI_8/Merged_8_fastqs/E03_R2_.fastq.gz ./MslI_9/Merged_9_fastqs/E03_R2_.fastq.gz > E03_R2_.fastq

zcat ./MslI_1/Merged_1_fastqs/F02_R1_.fastq.gz ./MslI_2/Merged_2_fastqs/F02_R1_.fastq.gz ./MslI_3/Merged_3_fastqs/F02_R1_.fastq.gz ./MslI_4/Merged_4_fastqs/F02_R1_.fastq.gz ./MslI_5/Merged_5_fastqs/F02_R1_.fastq.gz ./MslI_6/Merged_6_fastqs/F02_R1_.fastq.gz ./MslI_7/Merged_7_fastqs/F02_R1_.fastq.gz ./MslI_8/Merged_8_fastqs/F02_R1_.fastq.gz ./MslI_9/Merged_9_fastqs/F02_R1_.fastq.gz > F02_R1_.fastq
zcat ./MslI_1/Merged_1_fastqs/F02_R2_.fastq.gz ./MslI_2/Merged_2_fastqs/F02_R2_.fastq.gz ./MslI_3/Merged_3_fastqs/F02_R2_.fastq.gz ./MslI_4/Merged_4_fastqs/F02_R2_.fastq.gz ./MslI_5/Merged_5_fastqs/F02_R2_.fastq.gz ./MslI_6/Merged_6_fastqs/F02_R2_.fastq.gz ./MslI_7/Merged_7_fastqs/F02_R2_.fastq.gz ./MslI_8/Merged_8_fastqs/F02_R2_.fastq.gz ./MslI_9/Merged_9_fastqs/F02_R2_.fastq.gz > F02_R2_.fastq

zcat ./MslI_1/Merged_1_fastqs/F03_R1_.fastq.gz ./MslI_2/Merged_2_fastqs/F03_R1_.fastq.gz ./MslI_3/Merged_3_fastqs/F03_R1_.fastq.gz ./MslI_4/Merged_4_fastqs/F03_R1_.fastq.gz ./MslI_5/Merged_5_fastqs/F03_R1_.fastq.gz ./MslI_6/Merged_6_fastqs/F03_R1_.fastq.gz ./MslI_7/Merged_7_fastqs/F03_R1_.fastq.gz ./MslI_8/Merged_8_fastqs/F03_R1_.fastq.gz ./MslI_9/Merged_9_fastqs/F03_R1_.fastq.gz > F03_R1_.fastq
zcat ./MslI_1/Merged_1_fastqs/F03_R2_.fastq.gz ./MslI_2/Merged_2_fastqs/F03_R2_.fastq.gz ./MslI_3/Merged_3_fastqs/F03_R2_.fastq.gz ./MslI_4/Merged_4_fastqs/F03_R2_.fastq.gz ./MslI_5/Merged_5_fastqs/F03_R2_.fastq.gz ./MslI_6/Merged_6_fastqs/F03_R2_.fastq.gz ./MslI_7/Merged_7_fastqs/F03_R2_.fastq.gz ./MslI_8/Merged_8_fastqs/F03_R2_.fastq.gz ./MslI_9/Merged_9_fastqs/F03_R2_.fastq.gz > F03_R2_.fastq

zcat ./MslI_1/Merged_1_fastqs/G02_R1_.fastq.gz ./MslI_2/Merged_2_fastqs/G02_R1_.fastq.gz ./MslI_3/Merged_3_fastqs/G02_R1_.fastq.gz ./MslI_4/Merged_4_fastqs/G02_R1_.fastq.gz ./MslI_5/Merged_5_fastqs/G02_R1_.fastq.gz ./MslI_6/Merged_6_fastqs/G02_R1_.fastq.gz ./MslI_7/Merged_7_fastqs/G02_R1_.fastq.gz ./MslI_8/Merged_8_fastqs/G02_R1_.fastq.gz ./MslI_9/Merged_9_fastqs/G02_R1_.fastq.gz > G02_R1_.fastq
zcat ./MslI_1/Merged_1_fastqs/G02_R2_.fastq.gz ./MslI_2/Merged_2_fastqs/G02_R2_.fastq.gz ./MslI_3/Merged_3_fastqs/G02_R2_.fastq.gz ./MslI_4/Merged_4_fastqs/G02_R2_.fastq.gz ./MslI_5/Merged_5_fastqs/G02_R2_.fastq.gz ./MslI_6/Merged_6_fastqs/G02_R2_.fastq.gz ./MslI_7/Merged_7_fastqs/G02_R2_.fastq.gz ./MslI_8/Merged_8_fastqs/G02_R2_.fastq.gz ./MslI_9/Merged_9_fastqs/G02_R2_.fastq.gz > G02_R2_.fastq

zcat ./MslI_1/Merged_1_fastqs/G03_R1_.fastq.gz ./MslI_2/Merged_2_fastqs/G03_R1_.fastq.gz ./MslI_3/Merged_3_fastqs/G03_R1_.fastq.gz ./MslI_4/Merged_4_fastqs/G03_R1_.fastq.gz ./MslI_5/Merged_5_fastqs/G03_R1_.fastq.gz ./MslI_6/Merged_6_fastqs/G03_R1_.fastq.gz ./MslI_7/Merged_7_fastqs/G03_R1_.fastq.gz ./MslI_8/Merged_8_fastqs/G03_R1_.fastq.gz ./MslI_9/Merged_9_fastqs/G03_R1_.fastq.gz > G03_R1_.fastq
zcat ./MslI_1/Merged_1_fastqs/G03_R2_.fastq.gz ./MslI_2/Merged_2_fastqs/G03_R2_.fastq.gz ./MslI_3/Merged_3_fastqs/G03_R2_.fastq.gz ./MslI_4/Merged_4_fastqs/G03_R2_.fastq.gz ./MslI_5/Merged_5_fastqs/G03_R2_.fastq.gz ./MslI_6/Merged_6_fastqs/G03_R2_.fastq.gz ./MslI_7/Merged_7_fastqs/G03_R2_.fastq.gz ./MslI_8/Merged_8_fastqs/G03_R2_.fastq.gz ./MslI_9/Merged_9_fastqs/G03_R2_.fastq.gz > G03_R2_.fastq

zcat ./MslI_1/Merged_1_fastqs/H02_R1_.fastq.gz ./MslI_2/Merged_2_fastqs/H02_R1_.fastq.gz ./MslI_3/Merged_3_fastqs/H02_R1_.fastq.gz ./MslI_4/Merged_4_fastqs/H02_R1_.fastq.gz ./MslI_5/Merged_5_fastqs/H02_R1_.fastq.gz ./MslI_6/Merged_6_fastqs/H02_R1_.fastq.gz ./MslI_7/Merged_7_fastqs/H02_R1_.fastq.gz ./MslI_8/Merged_8_fastqs/H02_R1_.fastq.gz ./MslI_9/Merged_9_fastqs/H02_R1_.fastq.gz > H02_R1_.fastq
zcat ./MslI_1/Merged_1_fastqs/H02_R2_.fastq.gz ./MslI_2/Merged_2_fastqs/H02_R1_.fastq.gz ./MslI_3/Merged_3_fastqs/H02_R2_.fastq.gz ./MslI_4/Merged_4_fastqs/H02_R1_.fastq.gz ./MslI_5/Merged_5_fastqs/H02_R2_.fastq.gz ./MslI_6/Merged_6_fastqs/H02_R2_.fastq.gz ./MslI_7/Merged_7_fastqs/H02_R2_.fastq.gz ./MslI_8/Merged_8_fastqs/H02_R2_.fastq.gz ./MslI_9/Merged_9_fastqs/H02_R2_.fastq.gz > H02_R2_.fastq

zcat ./MslI_1/Merged_1_fastqs/H03_R1_.fastq.gz ./MslI_2/Merged_2_fastqs/H03_R1_.fastq.gz ./MslI_3/Merged_3_fastqs/H03_R1_.fastq.gz ./MslI_4/Merged_4_fastqs/H03_R1_.fastq.gz ./MslI_5/Merged_5_fastqs/H03_R1_.fastq.gz ./MslI_6/Merged_6_fastqs/H03_R1_.fastq.gz ./MslI_7/Merged_7_fastqs/H03_R1_.fastq.gz ./MslI_8/Merged_8_fastqs/H03_R1_.fastq.gz ./MslI_9/Merged_9_fastqs/H03_R1_.fastq.gz > H03_R1_.fastq
zcat ./MslI_1/Merged_1_fastqs/H03_R2_.fastq.gz ./MslI_2/Merged_2_fastqs/H03_R2_.fastq.gz ./MslI_3/Merged_3_fastqs/H03_R2_.fastq.gz ./MslI_4/Merged_4_fastqs/H03_R2_.fastq.gz ./MslI_5/Merged_5_fastqs/H03_R2_.fastq.gz ./MslI_6/Merged_6_fastqs/H03_R2_.fastq.gz ./MslI_7/Merged_7_fastqs/H03_R2_.fastq.gz ./MslI_8/Merged_8_fastqs/H03_R2_.fastq.gz ./MslI_9/Merged_9_fastqs/H03_R2_.fastq.gz > H03_R2_.fastq && echo .............................................................................................. se han demultiplexado los archivos con exito




pear -f A03_R1_.fastq -r A03_R2_.fastq -o A03.fastq && echo .............................................................................................. corriendo pear
pear -f H03_R1_.fastq -r H03_R2_.fastq -o H03.fastq
pear -f B03_R1_.fastq -r B03_R2_.fastq -o B03.fastq
pear -f C03_R1_.fastq -r C03_R2_.fastq -o C03.fastq
pear -f D03_R1_.fastq -r D03_R2_.fastq -o D03.fastq
pear -f E02_R1_.fastq -r E02_R2_.fastq -o E02.fastq
pear -f E03_R1_.fastq -r E03_R2_.fastq -o E03.fastq
pear -f F02_R1_.fastq -r F02_R2_.fastq -o F02.fastq
pear -f F03_R1_.fastq -r F03_R2_.fastq -o F03.fastq
pear -f G02_R1_.fastq -r G02_R2_.fastq -o G02.fastq
pear -f G03_R1_.fastq -r G03_R2_.fastq -o G03.fastq
pear -f H02_R1_.fastq -r H02_R2_.fastq -o H02.fastq && echo .............................................................................................. pear termino de correr 

cd /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/Merged/params

limite=9
i=1 
while [ $limite -ge $i ] 
do 
	
 	sed -i '/\[2] /c\                                                                  ## [2] [raw_fastq_path] ' params-Merged_$i.txt
	sed -i '/\[4] /c\/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/Merged/*.assembled.fastq  ## [4] [sorted_fastq_path] ' params-Merged_$i.txt
  	sed -i '/\[7] /c\gbs ## [7] [data_type] ' params-Merged_$i.txt && echo ...................... se ha modificado  params-Merged_$i.txt  exitosamente
	sed -i '/\[16] /c\0                                                                ##  [16] [filter_adapters]: ' params-Merged_$i.txt	
	
	
let i=$i+1
done

echo ...................... se han modificado los parametros exitosamente
 	




# pasos 1y 2 ipyrad 
cd /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/Merged/
mkdir fastqc
# creo los ensambles en pyrad teniendo en cuenta que hay que correrlo 9 veces para poder tener en cuenta todos los sitios de la enzima de restriccion  (NNRTG EN TERMINOS DE ATGC Y R (R=A o G))
# en otras palabras NNRTG = RRRTG, RCRTG, RTRTG, CRRTG, CCRTG, CTRTG, TRRTG, TCRTG, TTRTG. A cada muestra le corro el fastqc.

#ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-coco_1.txt -r -f -s 1

limite=9
i=1 
while [ $limite -ge $i ] 
do 
 	ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/Merged/params/params-Merged_$i.txt -r -f -s 2
 	mkdir ./fastqc/corrida_$i
    #perl /home/jorge/FastQC/fastqc /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/Merged/MslI_$i/MslI_$[i]_fastqs/*.fastq.gz -o /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/Merged/fastqc/corrida_$i

 	
let i=$i+1
done



#### aca tengo que modificar los paths de los parametros que copie del otro analisis ### no esta automatizado, lo estoy haciendo manual

#limite=9
#i=1
#while [ $limite -ge $i ] 
#do

#sed -i '/## 1. /c\/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/merged/merged_${!i}      ## 1. project_dir   ' params-coco_$i.txt


#let i=$i+1
#done 



#sed -i '/## 2. /c\/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/RAW/*grep.fastq      ## 1. project_dir   ' *
#sed -i '/## 3. /c\/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/barcodes/barcodes      ## 1. project_dir   ' *


################################################################################################################






