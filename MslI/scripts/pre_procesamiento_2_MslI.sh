#!/bin/bash
mkdir /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params
mkdir /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/fastqc/
cd /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params


# pasos 1 y 2 del ipyrad 
# creo los ensambles en pyrad teniendo en cuenta que hay que correrlo 9 veces para poder tener en cuenta todos los sitios de la enzima de restriccion  (NNRTG EN TERMINOS DE ATGC Y R (R=A o G))
# en otras palabras NNRTG = RRRTG, RCRTG, RTRTG, CRRTG, CCRTG, CTRTG, TRRTG, TCRTG, TTRTG. A cada muestra le corro el fastqc.

limite=9
i=1 

while [ $limite -ge $i ] 
do 
    ipyrad -n coco_$i
    
	sed -i '/\[1] /c\/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/MslI_'$i'  			## [1] [project_dir] ' 	   			params-coco_$i.txt
	sed -i '/\[2] /c\/home/jorge/POPULATIONS_GENOMICS/MslI/RAW/grep/*.fastq          	## [2] [raw_fastq_path]: '  		params-coco_$i.txt
	sed -i '/\[3] /c\/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/barcodes/barcodes     ## [3] [barcodes_path]: '   		params-coco_$i.txt 
	sed -i '/\[7] /c\pairgbs                                                            ## [7] [data_type]: '       		params-coco_$i.txt 
	sed -i '/\[11] /c\20                                                                ## [11] [mindepth_statistical]: '   params-coco_$i.txt	
	sed -i '/\[12] /c\20                                                                ## [12] [mindepth_majrule]: '       params-coco_$i.txt	
	sed -i '/\[16] /c\2                                                                 ## [16] [filter_adapters]: '        params-coco_$i.txt	
	sed -i '/\[27] /c\*                                                                 ## [27] [output_formats]: '         params-coco_$i.txt	
											  	
let i=$i+1
done

	sed -i '/\[8] /c\RRRTG,                                                                ##  [8] [restriction_overhang]: ' params-coco_1.txt	
	sed -i '/\[8] /c\RCRTG,                                                                ##  [8] [restriction_overhang]: ' params-coco_2.txt	
	sed -i '/\[8] /c\RTRTG,                                                                ##  [8] [restriction_overhang]: ' params-coco_3.txt	
	sed -i '/\[8] /c\CRRTG,                                                                ##  [8] [restriction_overhang]: ' params-coco_4.txt	
	sed -i '/\[8] /c\CCRTG,                                                                ##  [8] [restriction_overhang]: ' params-coco_5.txt	
	sed -i '/\[8] /c\CTRTG,                                                                ##  [8] [restriction_overhang]: ' params-coco_6.txt	
	sed -i '/\[8] /c\TRRTG,                                                                ##  [8] [restriction_overhang]: ' params-coco_7.txt	
	sed -i '/\[8] /c\TCRTG,                                                                ##  [8] [restriction_overhang]: ' params-coco_8.txt	
	sed -i '/\[8] /c\TTRTG,                                                                ##  [8] [restriction_overhang]: ' params-coco_9.txt	

limite=9
i=1 

while [ $limite -ge $i ] 
do 

	ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-coco_$i.txt -r -f -s 12

	mkdir /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/fastqc/corrida_$i
	perl /home/jorge/FastQC/fastqc /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/MslI_$i/MslI_$[i]_fastqs/*.fastq.gz -o /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/fastqc/corrida_$i

let i=$i+1
done

