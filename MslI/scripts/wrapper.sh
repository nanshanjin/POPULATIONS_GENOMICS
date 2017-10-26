#!/bin/bash
#########################################################      2    #########################################################################################################################################
#########################################################      3    #########################################################################################################################################
#########################################################      4    #########################################################################################################################################

cd /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params

# uno los parametros de cada una de las 9 corridas para seguir analizando en los pasos posteriores del ipyrad todo como un conjunto
ipyrad -m full params-coco_1.txt params-coco_2.txt params-coco_3.txt params-coco_4.txt params-coco_5.txt params-coco_6.txt params-coco_7.txt params-coco_8.txt params-coco_9.txt 

#ramifico para crear un analisis laxo y uno estricto
ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-full.txt -r -f -b laxo 
ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-full.txt -r -f -b estricto 
# modifico el archivo params para que tengan efecto los cambios "estrictos"
sed -i '/\[11] /c\6  ## [11] ' params-laxo.txt
sed -i '/\[12] /c\6  ## [12] ' params-laxo.txt
sed -i '/\[14] /c\0.90  ## [14] ' params-estricto.txt
sed -i '/\[23] /c\1, 1  ## [23] ' params-estricto.txt

#corrro los pasos del 3 al 6 para cada analisis
ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-laxo.txt -r -f -s 3456 
ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-estricto.txt -r -f -s 3456 




 








