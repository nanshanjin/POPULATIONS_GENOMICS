#!/bin/bash

#########################################################      2    #########################################################################################################################################
#########################################################      3    #########################################################################################################################################
#########################################################      4    #########################################################################################################################################


# corro el ipyrad 
cd /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/params
mkdir /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/reference

ipyrad -p /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/params/params-coco_PM.txt -b reference_PM -f -r # ramifico el analisis para llevar a cabo uno estricto y otro laxo , cambio los parametros 11,12 y 14 

	sed -i '/\[6] /c\/home/jorge/POPULATIONS_GENOMICS/CoConut.genome.fa                     ## [7] [reference_sequence]: '      params-reference_PM.txt 
	sed -i '/\[27] /c\reference                                                             ## [5] [assembly_method]: '			params-reference_PM.txt


ipyrad -p /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/params/params-reference_PM.txt -b estricto_reference -f -r # ramifico el analisis para llevar a cabo uno estricto y otro laxo , cambio los parametros 11,12 y 14 



sed -i '/\[11] /c\20  ## [11] ' params-estricto_reference.txt
sed -i '/\[12] /c\20  ## [12] ' params-estricto_reference.txt
sed -i '/\[14] /c\0.90  ## [14] ' params-estricto_reference.txt
sed -i '/\[23] /c\1, 1  ## [23] ' params-estricto_reference.txt

ipyrad -p /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/params/params-reference_PM.txt -b laxo_reference -f -r # ramifico el analisis para llevar a cabo el analisis laxo

sed -i '/\[11] /c\6  ## [11] ' params-laxo_reference.txt
sed -i '/\[12] /c\6  ## [12] ' params-laxo_reference.txt
sed -i '/\[14] /c\0.85  ## [14] ' params-laxo_reference.txt
sed -i '/\[23] /c\8, 8  ## [23] ' params-laxo_reference.txt

ipyrad -p /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/params/params-laxo_reference.txt -f -r -s 3456  # corro los pasos del 3 al 6 para el laxo
ipyrad -p /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/params/params-estricto_reference.txt -f -r -s 3456 # corro los pasos del 3 al 6 para el estricto







