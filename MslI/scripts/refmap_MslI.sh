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
### corro el diseño experimental 

#Arreglo	                           Parámetro		
#    	-p (populations)	 -m (ustacks/refmap)	-n (cstacks)
#P_4	4								20				1
#P_12	12								20				1
#Q_4	4								6				1
#Q_12	12								6				1
#R_4	4								12				1
#R_12	12								12				1





mkdir /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference
cd /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference
mkdir reference_p4 reference_p12 

	
	# P_4
	ref_map.pl -b 1 -o /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/reference_p4 -O /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/pop_map/pop_map_reference -m 20  -T 4  --overw_db -B ensayo_mil_radtags  -D 11/11/17 -X "populations:--genepop --vcf -p 4 " -X "cstacks:-n 1"  -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/E02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/F02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/G02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/H02.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/A03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/B03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/C03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/D03.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/E03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/F03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/G03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/H03.sam	
    # P_12
    ref_map.pl -b 1 -o /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/reference_p12 -O /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/pop_map/pop_map_reference_12 -m 20  -T 4  --overw_db -B ensayo_mil_radtags  -D 11/11/17 -X "populations:--genepop --vcf -p 12 " -X "cstacks:-n 1"  -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/E02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/F02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/G02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/H02.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/A03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/B03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/C03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/D03.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/E03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/F03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/G03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/H03.sam	

cd /DIRRECCION/DISCO/DURO_1
mkdir reference_Q4 reference_Q12 

	# Q_4
		ref_map.pl -b 1 -o /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/reference_p4 -O /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/pop_map/pop_map_reference -m 6  -T 4  --overw_db -B ensayo_mil_radtags  -D 11/11/17 -X "populations:--genepop --vcf -p 4 " -X "cstacks:-n 1"  -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/E02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/F02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/G02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/H02.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/A03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/B03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/C03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/D03.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/E03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/F03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/G03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/H03.sam	
	# Q_12
		ref_map.pl -b 1 -o /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/reference_p12 -O /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/pop_map/pop_map_reference_12 -m 6  -T 4  --overw_db -B ensayo_mil_radtags  -D 11/11/17 -X "populations:--genepop --vcf -p 12 " -X "cstacks:-n 1"  -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/E02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/F02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/G02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/H02.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/A03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/B03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/C03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/D03.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/E03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/F03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/G03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/H03.sam	


cd /DIRRECCION/DISCO/DURO_2
mkdir reference_R4 reference_R12  
 
 	# R_4
		ref_map.pl -b 1 -o /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/reference_p4 -O /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/pop_map/pop_map_reference -m 12  -T 4  --overw_db -B ensayo_mil_radtags  -D 11/11/17 -X "populations:--genepop --vcf -p 4 " -X "cstacks:-n 1"  -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/E02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/F02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/G02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/H02.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/A03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/B03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/C03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/D03.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/E03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/F03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/G03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/H03.sam	
	# R_12
		ref_map.pl -b 1 -o /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/reference_p12 -O /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/pop_map/pop_map_reference_12 -m 12  -T 4  --overw_db -B ensayo_mil_radtags  -D 11/11/17 -X "populations:--genepop --vcf -p 12 " -X "cstacks:-n 1"  -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/E02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/F02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/G02.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/H02.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/A03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/B03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/C03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/D03.sam -s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/E03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/F03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/G03.sam	-s /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/H03.sam	



