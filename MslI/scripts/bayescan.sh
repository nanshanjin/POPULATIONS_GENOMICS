#!/bin/bash
cd /home/jorge/BayeScan2.1/

## primero corro bayescan a los resultados arrojados por ipyrad 

# estricto_min_sample 12
/home/jorge/BayeScan2.1/source/bayescan_2.1 /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/estricto_min_sample_12.GESTE  -snp -o /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/estricto_min_sample_2_BY -pr_odds 10
# estricto_min_sample 4
/home/jorge/BayeScan2.1/source/bayescan_2.1 /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/estricto_min_sample_4.GESTE -snp -o /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/estricto_min_sample_12_BY -pr_odds 10

# laxo_min_sample 12
/home/jorge/BayeScan2.1/source/bayescan_2.1 /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/laxo_min_sample_12.GESTE -snp -o /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/laxo_min_sample_2_BY -pr_odds 10
# laxo_min_sample 2
/home/jorge/BayeScan2.1/source/bayescan_2.1 /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/laxo_min_sample_2.GESTE -snp -o /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/laxo_min_sample_4_BY -pr_odds 10
# laxo_min_sample 4
/home/jorge/BayeScan2.1/source/bayescan_2.1 /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/laxo_min_sample_4.GESTE -snp -o /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/laxo_min_sample_12_BY -pr_odds 10

## luego corro los resultados arrojados por stacks

#stacks p = 4

/home/jorge/BayeScan2.1/source/bayescan_2.1 /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/loci_differentiation/stacks_p4.GESTE  -snp -o /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/loci_differentiation/stacks_p4_BY -pr_odds 10
  
#stacks p = 12
  
/home/jorge/BayeScan2.1/source/bayescan_2.1 /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/loci_differentiation/stacks_p12.GESTE  -snp -o /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/loci_differentiation/stacks_p12_BY -pr_odds 10
  

Rscript /home/jorge/POPULATIONS_GENOMICS/MslI/scripts/bayescan_graph.r
