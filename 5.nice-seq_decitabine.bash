~/myPrograms/sra-tools/sratoolkit.2.9.0-centos_linux64/bin/fastq-dump SRR5453772 --split-files
~/myPrograms/sra-tools/sratoolkit.2.9.0-centos_linux64/bin/fastq-dump SRR5453767 --split-files
###
##
#
trim_galore --illumina --paired -o /root/decitabine/fastq \
/root/decitabine/fastq/SRR5453767_1.fastq /root/decitabine/fastq/SRR5453767_2.fastq &

trim_galore --illumina --paired -o /root/decitabine/fastq \
/root/decitabine/fastq/SRR5453772_1.fastq /root/decitabine/fastq/SRR5453772_2.fastq &
#
#
STAR --genomeDir /root/resources/hg38_noanno/ --runThreadN 40 \
--readFilesIn /root/decitabine/fastq/SRR5453772_1_val_1.fq /root/decitabine/fastq/SRR5453772_2_val_2.fq \
--alignIntronMax 1 --alignEndsType EndToEnd --outFilterMultimapNmax 1 --outFilterMatchNminOverLread 0.80 \
--outSAMtype BAM SortedByCoordinate --outFileNamePrefix /root/decitabine/niceseq/niceseq_dec_

STAR --genomeDir /root/resources/hg38_noanno/ --runThreadN 40 \
--readFilesIn /root/decitabine/fastq/SRR5453767_1_val_1.fq /root/decitabine/fastq/SRR5453767_2_val_2.fq \
--alignIntronMax 1 --alignEndsType EndToEnd --outFilterMultimapNmax 1 --outFilterMatchNminOverLread 0.80 \
--outSAMtype BAM SortedByCoordinate --outFileNamePrefix /root/decitabine/niceseq/niceseq_25k_
##
#
java -jar /root/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/root/decitabine/niceseq/niceseq_dec_Aligned.sortedByCoord.out.bam \
O=/root/decitabine/niceseq/niceseq_dec_rmdup.bam \
M=/root/decitabine/niceseq/niceseq_dec_rmdup.mfile

java -jar /root/myPrograms/picard/build/libs/picard.jar MarkDuplicates REMOVE_DUPLICATES=true \
I=/root/decitabine/niceseq/niceseq_25k_Aligned.sortedByCoord.out.bam \
O=/root/decitabine/niceseq/niceseq_25k_rmdup.bam \
M=/root/decitabine/niceseq/niceseq_25k_rmdup.mfile
##
#

samtools index /root/decitabine/niceseq/niceseq_dec_rmdup.bam
##

samtools index /root/decitabine/niceseq/niceseq_25k_rmdup.bam

###
bamCoverage -p max -bs 1 --normalizeUsingRPKM -b /root/decitabine/niceseq/niceseq_dec_rmdup.bam \
-o /root/decitabine/niceseq/niceseq_dec.bw


bamCoverage -p max -bs 1 --normalizeUsingRPKM -b /root/decitabine/niceseq/niceseq_25k_rmdup.bam \
-o /root/decitabine/niceseq/niceseq_25k.bw

##
#



computeMatrix reference-point \
-S /root/decitabine/niceseq/niceseq_25k.bw \
/root/decitabine/niceseq/niceseq_dec.bw \
-R ~/wgbs/fastq_trim/fisher_neb_diff_und.bed --referencePoint center \
--sortRegions descend -bs 10 -a 2000 -b 2000 -p 40 -out niceseq_dec.mat


plotHeatmap --xAxisLabel "" --refPointLabel "CpG" --colorMap Blues -m niceseq_dec.mat -out niceseq_dec.pdf


