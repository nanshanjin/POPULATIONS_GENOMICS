mkdir /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/reference


cd /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/barcodes
cat barcodes | cut -d$'\t' -f 1 > /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/barcodes/samples


cd /home/jorge/POPULATIONS_GENOMICS/ref_coco



mapfile -t VbarcodePM < /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/barcodes/samples
while IFS= read -r line; do echo ">>$line<<"; done < /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/barcodes/samples


limite=11
i=0
while [ $limite -ge $i ]
do

perl /home/jorge/bowtie2-2.3.3.1-linux-x86_64/bowtie2 -x ref_coco -1 /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/"${VbarcodePM[i]}".1.fq -2 /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/"${VbarcodePM[i]}".2.fq -S /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/"${VbarcodePM[i]}".sam

let i=$i+1
done 

mkdir /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/reference
cd /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/reference
mkdir reference_20 reference_6

		
	ref_map.pl -b 1 -o /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/reference/reference_6 -O /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/pop_map/pop_map_reference -T 4 -m 6 --create_db -B PM_ref_6_radtags  -D 31/10/17 -X "populations:--genepop --vcf --vcf_haplotypes --structure" -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/A03.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/B03.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/C03.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/D03.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/E02.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/E03.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/F02.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/F03.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/G02.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/G03.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/H02.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/H03.sam
	
	ref_map.pl -b 1 -o /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/reference/reference_20 -O /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/pop_map/pop_map_reference -T 4 -m 20 --create_db -B PM_ref_20_radtags -D 31/10/17 -X "populations:--genepop --vcf --vcf_haplotypes --structure" -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/A03.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/B03.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/C03.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/D03.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/E02.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/E03.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/F02.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/F03.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/G02.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/G03.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/H02.sam -s /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags/H03.sam

