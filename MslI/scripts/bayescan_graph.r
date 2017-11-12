source ("/home/jorge/BayeScan2.1/R_functions/plot_R.r")


## GRAFICO LOS RESULTADOS DE IPYRAD

# ESTRICTO_MIN_SAMPLE_4
print("ESTRICTO_MIN_SAMPLE_4")
plot_bayescan("/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/estricto_min_sample_4_BY_fst.txt", FDR=0.05, titulo="estricto_min_sample_4")

# ESTRICTO_MIN_SAMPLE_12
print("ESTRICTO_MIN_SAMPLE_12")
plot_bayescan("/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/estricto_min_sample_12_BY_fst.txt", FDR=0.05, titulo="estricto_min_sample_12")


# LAXO_MIN_SAMPLE_4
print("LAXO_MIN_SAMPLE_4")
plot_bayescan("/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/laxo_min_sample_4_BY_fst.txt", FDR=0.05, titulo="laxo_min_sample_4") 

# LAXO_MIN_SAMPLE_12
print("LAXO_MIN_SAMPLE_12")
plot_bayescan("/home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/laxo_min_sample_12_BY_fst.txt", FDR=0.05, titulo="laxo_min_sample_12")


## GRAFICO LOS RESULTADOS DE STACKS

# STACKS p=4
print("stacks_p4")
plot_bayescan("/home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/loci_differentiation/stacks_p4_BY_fst.txt", FDR=0.05, titulo="stacks p=4")

# STACKS p=12
print("stacks_p12")
plot_bayescan("/home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/loci_differentiation/stacks_p12_BY_fst.txt", FDR=0.05, titulo="stacks p=12")

