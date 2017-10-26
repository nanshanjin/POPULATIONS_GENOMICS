#!/bin/bash
mkdir /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/denovo
cd /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/denovo

	
	denovo_map.pl -b 1 -o /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/denovo -O /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/pop_map/pop_map -T 4 -m 6  -t -B PM_demo_SE6_radtags  -D 24/10/17 -X "populations:--genepop --vcf --vcf_haplotypes --structure" -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/A03.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/B03.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/C03.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/D03.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/E02.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/E03.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/F02.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/F03.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/G02.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/G03.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/H02.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/H03.1.fq
	
	denovo_map.pl -b 1 -o /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/denovo -O /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/pop_map/pop_map -T 4 -m 20 -t -B PM_demo_SE20_radtags -D 24/10/17 -X "populations:--genepop --vcf --vcf_haplotypes --structure" -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/A03.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/B03.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/C03.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/D03.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/E02.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/E03.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/F02.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/F03.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/G02.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/G03.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/H02.1.fq -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/H03.1.fq