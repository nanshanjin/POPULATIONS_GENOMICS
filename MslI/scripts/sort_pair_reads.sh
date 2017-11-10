#!/bin/bash
cd /home/jorge/POPULATIONS_GENOMICS/MslI/stacks
mkdir ./collated

sort_read_pairs.pl -p ./denovo/ -s ./process_radtags/ -o ./collated/ -t 'fastq'
