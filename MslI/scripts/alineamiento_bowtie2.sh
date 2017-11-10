#!/bin/bash

cd /home/jorge/POPULATIONS_GENOMICS
mkdir /home/jorge/POPULATIONS_GENOMICS/ref_coco
cd /home/jorge/POPULATIONS_GENOMICS/ref_coco

perl /home/jorge/bowtie2-2.3.3.1-linux-x86_64/bowtie2-build /home/jorge/POPULATIONS_GENOMICS/CoConut.genome.fa ref_coco
