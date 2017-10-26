#!/bin/bash

#########################################################      2    #########################################################################################################################################
#########################################################      3    #########################################################################################################################################
#########################################################      4    #########################################################################################################################################


# corro el ipyrad 
cd /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/Merged/params

ipyrad -p /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/Merged/params/params-Merged_PM.txt -b estricto -f -r # ramifico el analisis para llevar a cabo uno estricto y otro laxo , cambio los parametros 11,12 y 14 
echo ........................................ modificando los parametros 

sed -i '/\[11] /c\20  ## [11] ' params-estricto.txt
sed -i '/\[12] /c\20  ## [12] ' params-estricto.txt
sed -i '/\[14] /c\0.90  ## [14] ' params-estricto.txt


ipyrad -p /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/Merged/params/params-Merged_PM.txt -b laxo -f -r # ramifico el analisis para llevar a cabo el analisis laxo

ipyrad -p /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/Merged/params/params-laxo.txt -f -r -s 3456  # corro los pasos del 3 al 6 para el laxo
ipyrad -p /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/Merged/params/params-estricto.txt -f -r -s 3456 # corro los pasos del 3 al 6 para el estricto







