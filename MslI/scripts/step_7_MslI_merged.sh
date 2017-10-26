cd /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/Merged/params

#ramifico el analisis para correr min_locus_sample a 2, 4 y 12
ipyrad -p ./params-laxo.txt -b laxo_min_sample_2 -r -f
ipyrad -p ./params-laxo.txt -b laxo_min_sample_4 -r -f 
ipyrad -p ./params-laxo.txt -b laxo_min_sample_12 -r -f
 

ipyrad -p ./params-estricto.txt -b estricto_min_sample_2 -r -f 
ipyrad -p ./params-estricto.txt -b estricto_min_sample_4 -r -f 
ipyrad -p ./params-estricto.txt -b estricto_min_sample_12 -r -f 
# modifico los archivos que recien se crearon

sed -i '/\[28] /c\/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/pop_files/pop_file_4  ## [28] ' params-laxo_min_sample_4.txt
sed -i '/\[28] /c\/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/pop_files/pop_file_12  ## [28] ' params-laxo_min_sample_12.txt
sed -i '/\[21] /c\12  ## [21] ' params-laxo_min_sample_12.txt
sed -i '/\[21] /c\2  ## [21] ' params-laxo_min_sample_2.txt

sed -i '/\[28] /c\/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/pop_files/pop_file_4  ## [28] ' params-estricto_min_sample_4.txt
sed -i '/\[28] /c\/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/pop_files/pop_file_12  ## [28] ' params-estricto_min_sample_12.txt
sed -i '/\[21] /c\12  ## [21] ' params-estricto_min_sample_12.txt
sed -i '/\[21] /c\2  ## [21] ' params-estricto_min_sample_2.txt

#corrro el paso 7


ipyrad -p ./params-laxo_min_sample_2.txt -r -f -s 7
ipyrad -p ./params-laxo_min_sample_4.txt -r -f -s 7
ipyrad -p ./params-laxo_min_sample_12.txt -r -f -s 7

ipyrad -p ./params-estricto_min_sample_2.txt -r -f -s 7
ipyrad -p ./params-estricto_min_sample_4.txt -r -f -s 7
ipyrad -p ./params-estricto_min_sample_12.txt -r -f -s 7
