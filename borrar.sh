#!/bin/bash
# borrar carpetas y archivos viejos

rm /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad_log.txt /home/jorge/POPULATIONS_GENOMICS/MslI/log.txt -vf
rm /home/jorge/POPULATIONS_GENOMICS/MslI/RAW/MslI_R1_grep.fastq /home/jorge/POPULATIONS_GENOMICS/MslI/RAW/MslI_R2_grep.fastq -vf
rm /home/jorge/POPULATIONS_GENOMICS/MslI/RAW/*.txt -vf
rm /home/jorge/POPULATIONS_GENOMICS/MslI/RAW/MslI_R1.fastq.bz2 /home/jorge/POPULATIONS_GENOMICS/MslI/RAW/MslI_R2.fastq.bz2
rm /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/MslI_* -Rfv
rm /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/fastqc/* -Rfv
rm /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/ipyrad_log.txt -fv
rm /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-estricto* /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-laxo* /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-full.txt -vf
rm /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/RAW/*.bz2 
rm /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/RAW/*.fastq /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/RAW/*.txt -vf
rm /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/PM -Rfv
rm /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/params/params-estricto* /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/params/params-laxo* /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/params/ipyrad_log.txt -vf
