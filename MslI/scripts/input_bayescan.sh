#!/bin/bash
## VCF --> PGD --> GESTE/Bayescan
# VCF --> PGD

# convierto los vcf de salida de ipyrad Msli laxo

java -Xmx1024m -Xms512M -jar /home/jorge/PGDSpider_2.1.1.2/PGDSpider2-cli.jar -inputfile /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/MslI_1/laxo_min_sample_4_reference_outfiles/laxo_min_sample_4_reference.vcf -inputformat VCF -outputfile /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/laxo_min_sample_4.PGD -outputformat PGD -spid /home/jorge/POPULATIONS_GENOMICS/vcf_pgd_2.spid

java -Xmx1024m -Xms512M -jar /home/jorge/PGDSpider_2.1.1.2/PGDSpider2-cli.jar -inputfile /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/MslI_1/laxo_min_sample_12_reference_outfiles/laxo_min_sample_12_reference.vcf -inputformat VCF -outputfile /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/laxo_min_sample_12.PGD -outputformat PGD -spid /home/jorge/POPULATIONS_GENOMICS/vcf_pgd_2.spid

# convierto los vcf de salida de ipyrad Msli estricto

java -Xmx1024m -Xms512M -jar /home/jorge/PGDSpider_2.1.1.2/PGDSpider2-cli.jar -inputfile /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/MslI_1/estricto_min_sample_4_reference_outfiles/estricto_min_sample_4_reference.vcf -inputformat VCF -outputfile /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/estricto_min_sample_4.PGD -outputformat PGD -spid /home/jorge/POPULATIONS_GENOMICS/vcf_pgd_2.spid

java -Xmx1024m -Xms512M -jar /home/jorge/PGDSpider_2.1.1.2/PGDSpider2-cli.jar -inputfile /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/MslI_1/estricto_min_sample_12_reference_outfiles/estricto_min_sample_12_reference.vcf -inputformat VCF -outputfile /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/estricto_min_sample_12.PGD -outputformat PGD -spid /home/jorge/POPULATIONS_GENOMICS/vcf_pgd_2.spid

#!/bin/bash

# convierto los vcf de salida de stacks Msli p4

mkdir /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/loci_differentiation
java -Xmx1024m -Xms512M -jar /home/jorge/PGDSpider_2.1.1.2/PGDSpider2-cli.jar -inputfile /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/reference_p4/batch_1.vcf -inputformat VCF -outputfile /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/loci_differentiation/stacks_p4.PGD -outputformat PGD -spid /home/jorge/POPULATIONS_GENOMICS/vcf_pgd_2.spid

# convierto los vcf de salida de stacks Msli p12

java -Xmx1024m -Xms512M -jar /home/jorge/PGDSpider_2.1.1.2/PGDSpider2-cli.jar -inputfile /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/reference_p12/batch_1.vcf -inputformat VCF -outputfile /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/loci_differentiation/stacks_p12.PGD -outputformat PGD -spid /home/jorge/POPULATIONS_GENOMICS/vcf_pgd_2.spid


## PGD --> GESTE/Bayescan

# convierto los PGD de ipyrad Msli laxo a GESTE_BAYESCAN


java -Xmx1024m -Xms512M -jar /home/jorge/PGDSpider_2.1.1.2/PGDSpider2-cli.jar -inputfile /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/laxo_min_sample_4.PGD -inputformat PGD -outputfile /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/laxo_min_sample_4.GESTE -outputformat GESTE_BAYE_SCAN -spid /home/jorge/POPULATIONS_GENOMICS/pgd_GESTE_2_.spid

java -Xmx1024m -Xms512M -jar /home/jorge/PGDSpider_2.1.1.2/PGDSpider2-cli.jar -inputfile /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/laxo_min_sample_12.PGD -inputformat PGD -outputfile /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/laxo_min_sample_12.GESTE -outputformat GESTE_BAYE_SCAN -spid /home/jorge/POPULATIONS_GENOMICS/pgd_GESTE_2_.spid

# convierto los PGD de salida de ipyrad Msli estricto a GESTE_BAYESCAN


java -Xmx1024m -Xms512M -jar /home/jorge/PGDSpider_2.1.1.2/PGDSpider2-cli.jar -inputfile /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/estricto_min_sample_4.PGD -inputformat PGD -outputfile /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/estricto_min_sample_4.GESTE -outputformat GESTE_BAYE_SCAN -spid /home/jorge/POPULATIONS_GENOMICS/pgd_GESTE_2_.spid

java -Xmx1024m -Xms512M -jar /home/jorge/PGDSpider_2.1.1.2/PGDSpider2-cli.jar -inputfile /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/estricto_min_sample_12.PGD -inputformat PGD -outputfile /home/jorge/POPULATIONS_GENOMICS/MslI/ipyrad/loci_clasiffication/estricto_min_sample_12.GESTE -outputformat GESTE_BAYE_SCAN -spid /home/jorge/POPULATIONS_GENOMICS/pgd_GESTE_2_.spid


# convierto los PGD de satcks p=4  Msli laxo a GESTE_BAYESCAN

java -Xmx1024m -Xms512M -jar /home/jorge/PGDSpider_2.1.1.2/PGDSpider2-cli.jar -inputfile /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/loci_differentiation/stacks_p4.PGD -inputformat PGD -outputfile /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/loci_differentiation/stacks_p4.GESTE -outputformat GESTE_BAYE_SCAN -spid /home/jorge/POPULATIONS_GENOMICS/pgd_GESTE_2_.spid

# convierto los PGD de satcks p=12  Msli laxo a GESTE_BAYESCAN

java -Xmx1024m -Xms512M -jar /home/jorge/PGDSpider_2.1.1.2/PGDSpider2-cli.jar -inputfile /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/loci_differentiation/stacks_p12.PGD -inputformat PGD -outputfile /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/reference/loci_differentiation/stacks_p12.GESTE -outputformat GESTE_BAYE_SCAN -spid /home/jorge/POPULATIONS_GENOMICS/pgd_GESTE_2_.spid


