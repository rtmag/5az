cut -f 1,2,3 fisher_neb_diff.txt > fisher_neb_diff_und.bed
echo "# Differentially Methylated" >> fisher_neb_diff_und.bed
cut -f 1,2,3 fisher_neb_undiff.txt >> fisher_neb_diff_und.bed
echo "# Not-differentially Methylated" >> fisher_neb_diff_und.bed


computeMatrix reference-point \
-S atac_rmdup.bw H3K27ac.bw H3K4me1.bw H3K4me3.bw H3K27me3.bw H3K9me3.bw H3K36me3.bw  \
-R ~/wgbs/fastq_trim/fisher_neb_diff_und.bed --referencePoint center \
--sortRegions descend -bs 100 -a 1000 -b 1000 -p 40 -out fisher_neb_diff_und.mat

plotHeatmap --xAxisLabel "" --refPointLabel "CpG" --colorMap Blues -m fisher_neb_diff_und.mat -out atac_diff_undiff.pdf


computeMatrix reference-point \
-S ctr1.bw ctr2.bw dec1.bw dec2.bw  \
-R ~/wgbs/fastq_trim/fisher_neb_diff_und.bed --referencePoint center \
--sortRegions descend -bs 100 -a 1000 -b 1000 -p max -out fisher_neb_diff_und_meth.mat

plotHeatmap --xAxisLabel "" --refPointLabel "CpG" --colorMap Blues -m fisher_neb_diff_und_meth.mat -out meth_diff_undiff.pdf
