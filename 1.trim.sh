
trim_galore --illumina --paired -o /root/wgbs/fastq_trim \
/root/wgbs/HCT116.Decitabine.WGBS.run1.1.fastq.gz \
/root/wgbs/HCT116.Decitabine.WGBS.run1.2.fastq.gz &

trim_galore --illumina --paired -o /root/wgbs/fastq_trim \
/root/wgbs/HCT116.Decitabine.WGBS.run2.1.fastq.gz  \
/root/wgbs/HCT116.Decitabine.WGBS.run2.2.fastq.gz &  

trim_galore --illumina --paired -o /root/wgbs/fastq_trim \
/root/wgbs/HCT116.control.WGBS.run1.1.fastq.gz  \
/root/wgbs/HCT116.control.WGBS.run1.2.fastq.gz  &

trim_galore --illumina --paired -o /root/wgbs/fastq_trim \
/root/wgbs/HCT116.control.WGBS.run2.1.fastq.gz  \
/root/wgbs/HCT116.control.WGBS.run2.2.fastq.gz  &
