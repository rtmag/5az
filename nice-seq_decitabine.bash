~/myPrograms/sra-tools/sratoolkit.2.9.0-centos_linux64/bin/fastq-dump SRR5453772 --split-files
~/myPrograms/sra-tools/sratoolkit.2.9.0-centos_linux64/bin/fastq-dump SRR5453767 --split-files
###
##
#
trim_galore --illumina --paired -o /root/decitabine/fastq \
/root/decitabine/fastq/SRR5453767_1.fastq /root/decitabine/fastq/SRR5453767_2.fastq &

trim_galore --illumina --paired -o /root/decitabine/fastq \
/root/decitabine/fastq/SRR5453772_1.fastq /root/decitabine/fastq/SRR5453772_2.fastq &

STAR --genomeDir /root/resources/hg38_noanno/ --readFilesCommand zcat --runThreadN 40 \
--readFilesIn /root/decitabine/fastq/ /root/decitabine/fastq/ \
--alignIntronMax 1 --alignEndsType EndToEnd --outFilterMultimapNmax 1 --outFilterMatchNminOverLread 0.80 \
--outSAMtype BAM SortedByCoordinate --outFileNamePrefix /root/decitabine/niceseq/niceseq_dec_

STAR --genomeDir /root/resources/hg38_noanno/ --readFilesCommand zcat --runThreadN 40 \
--readFilesIn /root/decitabine/fastq/ /root/decitabine/fastq/ \
--alignIntronMax 1 --alignEndsType EndToEnd --outFilterMultimapNmax 1 --outFilterMatchNminOverLread 0.80 \
--outSAMtype BAM SortedByCoordinate --outFileNamePrefix /root/decitabine/niceseq/niceseq_25k_
