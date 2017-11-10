
cd /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/ipyrad/barcodes
cat barcodes | cut -d$'\t' -f 1 > /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/barcodes/samples

cd /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/process_radtags

mapfile -t barcodePM < /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/stacks/barcodes/samples
while IFS= read -r line; do echo ">>$line<<"; done < /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/barcodes/samples


limite=11
i=0
while [ $limite -ge $i ]
do

grep ^@ "${barcodePM[i]}".1.fq | wc -l 
grep ^@ "${barcodePM[i]}".2.fq | wc -l
echo .................. ciclo $i , archivo ${barcodePM[i]}

let i=$i+1
done > lines.txt
cat lines.txt
