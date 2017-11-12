#!/bin/bash

mkdir /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference


cd /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/barcodes
cat barcodes | cut -d ' ' -f 1 > /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/barcodes/samples


cd /home/jorge/POPULATIONS_GENOMICS/ref_coco



mapfile -t Vbarcode < /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/barcodes/samples
while IFS= read -r line; do echo ">>$line<<"; done < /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/barcodes/samples


limite=${#Vbarcode[@]}
i=0
while [ $limite -ge $i ]
do

perl /home/jorge/bowtie2-2.3.3.1-linux-x86_64/bowtie2 -x ref_coco  -1 /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/process_radtags/"${Vbarcode[i]}".1.fq -2 /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/process_radtags/"${Vbarcode[i]}".2.fq -S  /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/"${Vbarcode[i]}".sam

let i=$i+1
done 

mkdir /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference
cd /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference
mkdir reference_p4 reference_p12

	
	# depth m=20 , min sample= p = 4
	ref_map.pl -b 1 -o /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/reference_p4 -O /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/pop_map/pop_map_reference -m 20  -T 4  --create_db -B Msli_p4_m20_radtags  -D 11/11/17 -X "populations:--genepop --vcf --vcf_haplotypes --structure -p 4" -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/E02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/F02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/G02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/H02.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/A03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/B03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/C03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/D03.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/E03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/F03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/G03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/H03.sam	

	# depth m=20 , min sample= p = 12
	ref_map.pl -b 1 -o /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/reference_p12 -O /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/pop_map/pop_map_reference_12 -m 20  -T 4  --create_db -B Msli_p12_m20_radtags  -D 11/11/17 -X "populations:--genepop --vcf --vcf_haplotypes --structure -p 12" -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/E02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/F02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/G02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/H02.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/A03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/B03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/C03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/D03.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/E03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/F03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/G03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/H03.sam	




#ref_map.pl -b 1 -o /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/reference_20 -O /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/pop_map/pop_map_reference -m 20 -T 4 --create_db -B Msli_ref_6_radtags  -D 31/10/17 -X "populations:--genepop --vcf --vcf_haplotypes --structure" -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/E02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/F02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/G02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/H02.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/A03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/B03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/C03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/D03.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/E03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/F03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/G03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/H03.sam	
