#!/bin/bash
mkdir /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/Merged
mkdir /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/Merged/params
cd /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/Merged/params



# construyo los nuevos sets de parametros


    ipyrad -n Merged_PM
	sed -i '/\[1] /c\/home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/Merged/             ## [1] [project_dir] ' 	         params-Merged_PM.txt
	sed -i '/\[2] /c\/home/jorge/POPULATIONS_GENOMICS/PstI-MspI/RAW/*grep.fastq            ## [2] [raw_fastq_path]: '        params-Merged_PM.txt
	sed -i '/\[3] /c\/home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/barcodes/barcodes   ## [3] [barcodes_path]: '         params-Merged_PM.txt 
	sed -i '/\[7] /c\pairddrad                                                                 ## [7] [data_type]: '             params-Merged_PM.txt 
	sed -i '/\[11] /c\20                                                                   ## [11] [mindepth_statistical]: ' params-Merged_PM.txt	
	sed -i '/\[12] /c\20                                                                   ## [12] [mindepth_majrule]: '     params-Merged_PM.txt	
	sed -i '/\[16] /c\2                                                                    ## [16] [filter_adapters]: '      params-Merged_PM.txt	
	sed -i '/\[27] /c\*                                                              	   ## [27] [output_formats]: '       params-Merged_PM.txt	
	sed -i '/\[8] /c\TGCAG, CGG                                                            ## [8] [restriction_overhang]: '  params-Merged_PM.txt	
	



# paso 1 del ipyrad
cd /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/Merged

 	ipyrad -p /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/Merged/params/params-Merged_PM.txt -r -f -s 1
	


echo ...................................... el paso 1 del ipyrad ha sido completado con exito ahora hay que hacer unos zcat para juntar las diferentes corridas y quedar con 2 archivos por muestra

cd /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/Merged/Merged_PM_fastqs


pear -f A03_R1_.fastq.gz -r A03_R2_.fastq.gz -o A03.fastq.gz && echo .............................................................................................. corriendo pear
pear -f H03_R1_.fastq.gz -r H03_R2_.fastq.gz -o H03.fastq.gz
pear -f B03_R1_.fastq.gz -r B03_R2_.fastq.gz -o B03.fastq.gz
pear -f C03_R1_.fastq.gz -r C03_R2_.fastq.gz -o C03.fastq.gz
pear -f D03_R1_.fastq.gz -r D03_R2_.fastq.gz -o D03.fastq.gz
pear -f E02_R1_.fastq.gz -r E02_R2_.fastq.gz -o E02.fastq.gz
pear -f E03_R1_.fastq.gz -r E03_R2_.fastq.gz -o E03.fastq.gz
pear -f F02_R1_.fastq.gz -r F02_R2_.fastq.gz -o F02.fastq.gz
pear -f F03_R1_.fastq.gz -r F03_R2_.fastq.gz -o F03.fastq.gz
pear -f G02_R1_.fastq.gz -r G02_R2_.fastq.gz -o G02.fastq.gz
pear -f G03_R1_.fastq.gz -r G03_R2_.fastq.gz -o G03.fastq.gz
pear -f H02_R1_.fastq.gz -r H02_R2_.fastq.gz -o H02.fastq.gz && echo .............................................................................................. pear termino de correr 

cd /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/Merged/params

	
 	sed -i '/\[2] /c\                                                                 			                     ## [2] [raw_fastq_path] ' 	     params-Merged_PM.txt
	sed -i '/\[4] /c\/home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/Merged/Merged_PM_fastqs/*.assembled.fastq     ## [4] [sorted_fastq_path] '    params-Merged_PM.txt
  	sed -i '/\[7] /c\ddrad 																		                     ## [7] [data_type] ' 			 params-Merged_PM.txt && echo ...................... se ha modificado  params-Merged_PM.txt  exitosamente
	sed -i '/\[16] /c\0                                                              		                         ## [16] [filter_adapters]: '    params-Merged_PM.txt	
	
	

echo ...................... se han modificado los parametros exitosamente
 	




# pasos 1y 2 ipyrad 
cd /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/Merged/
mkdir fastqc





 	ipyrad -p /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/Merged/params/params-Merged_PM.txt -r -f -s 2
 	mkdir ./fastqc/corrida_PM
    #perl /home/jorge/FastQC/fastqc /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/Merged/PstI-MspI_PM/PstI-MspI_$[i]_fastqs/*.fastq.gz -o /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/Merged/fastqc/corrida_PM

 	




#### aca tengo que modificar los paths de los parametros que copie del otro analisis ### no esta automatizado, lo estoy haciendo manual

#limite=9
#i=1
#while [ $limite -ge PM ] 
#do

#sed -i '/## 1. /c\/home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/merged/merged_${!i}      ## 1. project_dir   ' params-coco_PM.txt


#let i=PM+1
#done 



#sed -i '/## 2. /c\/home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/RAW/*grep.fastq      ## 1. project_dir   ' *
#sed -i '/## 3. /c\/home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/barcodes/barcodes      ## 1. project_dir   ' *


################################################################################################################






