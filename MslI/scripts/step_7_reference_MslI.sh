#!/bin/bash
cd /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params

#ramifico el analisis para correr min_locus_sample a 2, 4 y 12
ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-laxo_reference.txt -b laxo_min_sample_2_reference -r -f
ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-laxo_reference.txt -b laxo_min_sample_4_reference -r -f 
ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-laxo_reference.txt -b laxo_min_sample_12_reference -r -f
 

ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-estricto_reference.txt -b estricto_min_sample_2_reference -r -f 
ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-estricto_reference.txt -b estricto_min_sample_4_reference -r -f 
ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-estricto_reference.txt -b estricto_min_sample_12_reference -r -f 

# modifico los archivos que recien se crearon

sed -i '/\[28] /c\/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/pop_files/pop_file_4                  ## [28] ' params-laxo_min_sample_4_reference.txt
sed -i '/\[28] /c\/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/pop_files/pop_file_4                  ## [28] ' params-laxo_min_sample_4_reference.txt
sed -i '/\[27] /c\*                                                                                  ## [27] ' params-laxo_min_sample_4_reference.txt


sed -i '/\[28] /c\/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/pop_files/pop_file_12                 ## [28] ' params-laxo_min_sample_12_reference.txt
sed -i '/\[21] /c\12  																				 ## [21] ' params-laxo_min_sample_12_reference.txt
sed -i '/\[27] /c\*                                                                                  ## [27] ' params-laxo_min_sample_12_reference.txt


sed -i '/\[21] /c\2  															                     ## [21] ' params-laxo_min_sample_2_reference.txt
sed -i '/\[27] /c\*                                                                                  ## [27] ' params-laxo_min_sample_2_reference.txt


sed -i '/\[28] /c\/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/pop_files/pop_file_4                  ## [28] ' params-estricto_min_sample_4_reference.txt
sed -i '/\[27] /c\*                                                                                  ## [27] ' params-estricto_min_sample_4_reference.txt


sed -i '/\[28] /c\/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/pop_files/pop_file_12                 ## [28] ' params-estricto_min_sample_12_reference.txt
sed -i '/\[21] /c\12              																	 ## [21] ' params-estricto_min_sample_12_reference.txt
sed -i '/\[27] /c\*                                                                                  ## [27] ' params-estricto_min_sample_12_reference.txt


sed -i '/\[21] /c\2                                                                                  ## [21] ' params-estricto_min_sample_2_reference.txt
sed -i '/\[27] /c\*                                                                                  ## [27] ' params-estricto_min_sample_2_reference.txt



#corrro el paso 7



ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-laxo_min_sample_2_reference.txt -r -f -s 7
ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-laxo_min_sample_4_reference.txt -r -f -s 7
ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-laxo_min_sample_12_reference.txt -r -f -s 7

ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-estricto_min_sample_2_reference.txt -r -f -s 7
ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-estricto_min_sample_4_reference.txt -r -f -s 7
ipyrad -p /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/params/params-estricto_min_sample_12_reference.txt -r -f -s 7
