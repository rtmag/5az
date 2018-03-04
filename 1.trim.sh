
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
#####

~/myPrograms/Bismark/bismark --bowtie2 --multicore 34 \
/root/resources/HCT116_bs/ \
-1 HCT116.Decitabine.WGBS.run1.1_val_1.fq.gz \
-2 HCT116.Decitabine.WGBS.run1.2_val_2.fq.gz

~/myPrograms/Bismark/bismark --bowtie2 --multicore 34 \
/root/resources/HCT116_bs/ \
-1 HCT116.Decitabine.WGBS.run2.1_val_1.fq.gz \
-2 HCT116.Decitabine.WGBS.run2.2_val_2.fq.gz

~/myPrograms/Bismark/bismark --bowtie2 --multicore 34 \
/root/resources/HCT116_bs/ \
-1 HCT116.control.WGBS.run1.1_val_1.fq.gz \
-2 HCT116.control.WGBS.run1.2_val_2.fq.gz

~/myPrograms/Bismark/bismark --bowtie2 --multicore 34 \
/root/resources/HCT116_bs/ \
-1 HCT116.control.WGBS.run2.1_val_1.fq.gz \
-2 HCT116.control.WGBS.run2.2_val_2.fq.gz

##

~/myPrograms/Bismark/bismark_methylation_extractor --multicore 32 --gzip --buffer_size 100G --paired-end --ample_memory --comprehensive --cytosine_report --genome_folder /root/resources/HCT116_bs/ HCT116.Decitabine.WGBS.run1.1_val_1_bismark_bt2_pe.bam
~/myPrograms/Bismark/bismark_methylation_extractor --multicore 32 --gzip --buffer_size 100G --paired-end --ample_memory --comprehensive --cytosine_report --genome_folder /root/resources/HCT116_bs/ HCT116.Decitabine.WGBS.run2.1_val_1_bismark_bt2_pe.bam

~/myPrograms/Bismark/bismark_methylation_extractor --multicore 32 --gzip --buffer_size 100G --paired-end --ample_memory --comprehensive --cytosine_report --genome_folder /root/resources/HCT116_bs/ HCT116.control.WGBS.run1.1_val_1_bismark_bt2_pe.bam
~/myPrograms/Bismark/bismark_methylation_extractor --multicore 32 --gzip --buffer_size 100G --paired-end --ample_memory --comprehensive --cytosine_report --genome_folder /root/resources/HCT116_bs/ HCT116.control.WGBS.run2.1_val_1_bismark_bt2_pe.bam
#
##
###
trim_galore --illumina -o /root/decitabine/p53_heatmap/fastq SRR1409974.fastq

/root/myPrograms/STAR/bin/STAR --readFilesIn \
SRR1409974_trimmed.fq \
       --outFileNamePrefix SRR1409974_ \
  --runThreadN 30 --genomeDir ~/resources/hg38_noanno/ \
       --outFilterMultimapNmax 1 \
 --seedSearchStartLmax 30 \
       --alignIntronMax 1 --alignEndsType EndToEnd \
       --outSAMtype BAM SortedByCoordinate
       
java -jar /root/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true I=SRR1409974_Aligned.sortedByCoord.out.bam \
O=SRR1409974_rmdup.bam  M=SRR1409974.mfile
       
samtools index SRR1409974_rmdup.bam

bamCoverage -p max -bs 1 --normalizeUsingRPKM -b SRR1409974_rmdup.bam -o SRR1409974.bw

##
#
