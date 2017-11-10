#!/bin/bash
########################### corro pasos 1 y 2 del ipyrad 
mkdir /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/reference
mkdir /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/reference/params
cd 	  /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/reference/params

ipyrad -n coco_PM

	sed -i '/\[1] /c\/home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/reference/PM 		## [1] [project_dir] ' 	   			params-coco_PM.txt
	sed -i '/\[2] /c\/home/jorge/POPULATIONS_GENOMICS/PstI-MspI/RAW/grep/*.fastq          	## [2] [raw_fastq_path]: '  		params-coco_PM.txt
	sed -i '/\[3] /c\/home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/barcodes/barcodes    ## [3] [barcodes_path]: '   		params-coco_PM.txt 
	sed -i '/\[7] /c\pairddrad                                                          	## [7] [data_type]: '       		params-coco_PM.txt 
	sed -i '/\[11] /c\20                                                                	## [11] [mindepth_statistical]: '   params-coco_PM.txt	
	sed -i '/\[12] /c\20                                                                	## [12] [mindepth_majrule]: '       params-coco_PM.txt	
	sed -i '/\[16] /c\2                                                                 	## [16] [filter_adapters]: '        params-coco_PM.txt	
	sed -i '/\[27] /c\*                                                                 	## [27] [output_formats]: '         params-coco_PM.txt	
	sed -i '/\[8] /c\TGCAG, CGG                                                             ## [8] [restriction_overhang]: '	params-coco_PM.txt	
	sed -i '/\[6] /c\/home/jorge/POPULATIONS_GENOMICS/CoConut.genome.fa                     ## [7] [reference_sequence]: '      params-coco_PM.txt 
	sed -i '/\[27] /c\reference                                                             ## [5] [assembly_method]: '			params-coco_PM.txt

	

ipyrad -p /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/reference/params/params-coco_PM.txt -r -f -s 12 # corro los primeros dos pasos correspondientes al preprocesamiento de los datos, este paso es comun a todos los analisis posteriores

mkdir /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/reference/fastqc/
perl /home/jorge/FastQC/fastqc /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/reference/PM/PstI-MspI_fastqs/*.fastq.gz -o /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/reference/fastqc/
