cd /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/process_radtags

perl /home/jorge/Pairfq/scripts/pairfq_lite.pl makepairs -f /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/process_radtags/G02.1.fq -r /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/process_radtags/G02.2.fq -fp ./G02.1_OK.fq -rp ./G02.2_OK.fq -fs ./popoG02.1.fq -rs ./popoG02.2.fq

perl /home/jorge/Pairfq/scripts/pairfq_lite.pl makepairs -f /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/process_radtags/F03.1.fq -r /home/jorge/POPULATIONS_GENOMICS/MslI/stacks/process_radtags/F03.2.fq -fp F03.1_OK.fq -rp F03.2_OK.fq -fs popoF03.1.fq -rs popoF03.2.fq

rm G02.1.fq F03.1.fq F03.2.fq G02.2.fq

mv ./G02.1_OK.fq ./G02.1.fq
mv ./G02.2_OK.fq ./G02.2.fq

mv ./F03.1_OK.fq ./F03.1.fq
mv ./F03.2_OK.fq ./F03.2.fq
