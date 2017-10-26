#!/bin/bash
# hace coincidir los paths en mi pc y en el pc de la cib para cuestiones de compatibilidad
#grep -rl '/jorge/POPULATIONS_GENOMICS/' ./ | xargs sed -i 's#/jorge/POPULATIONS_GENOMICS/#/jorge/POPULATIONS_GENOMICS/#g' # del pc de la cib a mi casa
#grep -rl '/jorge/POPULATIONS_GENOMICS/' ./ | xargs sed -i 's#/jorge/POPULATIONS_GENOMICS/#/baya/jorge/POPULATIONS_GENOMICS/#g' # de mi pc al pc de la cib


#cargar los archivos test 
#cp /home/baya/jorge/MslI/RAW/test/MslI_R1.fastq.bz2 /home/jorge/POPULATIONS_GENOMICS/MslI/RAW/test -v
#cp /home/baya/jorge/MslI/RAW/test/MslI_R2.fastq.bz2 /home/jorge/POPULATIONS_GENOMICS/MslI/RAW/test -v

#cp /home/baya/jorge/PstI-MspI/RAW/test/PM_R1.fastq.bz2 /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/RAW/test -v
#cp /home/baya/jorge/PstI-MspI/RAW/test/PM_R2.fastq.bz2 /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/RAW/test -v


# cargar archivos originales completos
#cp /home/baya/jorge/MslI/RAW/MslI_R1.fastq.bz2 /home/jorge/POPULATIONS_GENOMICS/MslI/RAW/ -v
#cp /home/baya/jorge/MslI/RAW/MslI_R2.fastq.bz2 /home/jorge/POPULATIONS_GENOMICS/MslI/RAW/ -v

#rm /home/baya/jorge/MslI/RAW/test/original/MslI_R1.fastq.bz2 /home/jorge/POPULATIONS_GENOMICS/MslI/RAW/test/original/MslI_R2.fastq.bz2 -v

#cp /home/baya/jorge/PstI-MspI/RAW/PM_R1.fastq.bz2 /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/RAW/ -v
#cp /home/baya/jorge/PstI-MspI/RAW/PM_R2.fastq.bz2 /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/RAW/ -v

#rm /home/baya/jorge/PstI-MspI/RAW/test/original/PM_R2.fastq.bz2 /home/baya/jorge/PstI-MspI/RAW/test/original/PM_R1.fastq.bz2 -v

#correr los scripts

echo ..........................................................MslI

echo .................................................... MslI limpiando reads de otras librerias
bash /home/jorge/POPULATIONS_GENOMICS/MslI/scripts/pre_procesamiento_1_MslI.sh 	# bash propio

echo .................................................... MslI pasos 1 y 2 
bash /home/jorge/POPULATIONS_GENOMICS/MslI/scripts/pre_procesamiento_2_MslI.sh    #  MslI pasos 1 y 2

echo .................................................... MslI pasos 3 al 6 
bash /home/jorge/POPULATIONS_GENOMICS/MslI/scripts/wrapper.sh                  # MslI         pasos 3 al 6

echo .................................................... MslI paso 7
bash /home/jorge/POPULATIONS_GENOMICS/MslI/scripts/step_7_MslI.sh                # MslI    paso 7




echo ..........................................................PstI-MspI

echo .................................................... PstI-MspI limpiando reads de otras librerias
bash /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/scripts/pre_procesamiento_1_PM.sh # bash propio

echo .................................................... PM pasos 1 y 2 
bash /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/scripts/pre_procesamiento_2_PM.sh #pasos PM 1 y 2

echo .................................................... PM pasos 3 al 6 
bash /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/scripts/wrapper_2.sh           # PM      pasos 3 al 6


echo .................................................... PM paso 7
bash /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/scripts/step_7_PM.sh            # PM      paso 7









