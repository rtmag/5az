cut -f 1,2,3 fisher_neb_diff.txt > fisher_neb_diff_und.bed
echo "# Diff Methylated" >> fisher_neb_diff_und.bed
cut -f 1,2,3 fisher_neb_undiff.txt >> fisher_neb_diff_und.bed
echo "# UnDiff Methylated" >> fisher_neb_diff_und.bed


computeMatrix reference-point \
-S atac_rmdup.bw P53_Venkata.bw P53_24h_doxo_s1.bw P53_48h_doxo_s1.bw H3K27ac.bw H3K4me1.bw H3K4me3.bw H3K27me3.bw H3K9me3.bw H3K36me3.bw  \
-R fisher_neb_diff_und.bed --referencePoint center \
--sortRegions descend -a 1000 -b 1000 -p 40 -out fisher_neb_diff_und.mat
