#mv DT24_KG1A_Control_1_val_1.fq.gz KG1A_Control_1_val_1.fq.gz
#mv DT24_KG1A_Control_2_val_2.fq.gz KG1A_Control_2_val_2.fq.gz
#1
~/myPrograms/Bismark/bismark --bowtie2 --multicore 50 \
/root/resources/hg38_bismark_vanilla/ \
-1 /root/annalisa_wgbs/trimmed/K562_AZA_2uM_48h_1_val_1.fq.gz \
-2 /root/annalisa_wgbs/trimmed/K562_AZA_2uM_48h_2_val_2.fq.gz
#2
~/myPrograms/Bismark/bismark --bowtie2 --multicore 50 \
/root/resources/hg38_bismark_vanilla/ \
-1 /root/annalisa_wgbs/trimmed/K562_AZA_2uM_72h_1_val_1.fq.gz \
-2 /root/annalisa_wgbs/trimmed/K562_AZA_2uM_72h_2_val_2.fq.gz
#3
~/myPrograms/Bismark/bismark --bowtie2 --multicore 50 \
/root/resources/hg38_bismark_vanilla/ \
-1 /root/annalisa_wgbs/trimmed/K562_Control_1_val_1.fq.gz \
-2 /root/annalisa_wgbs/trimmed/K562_Control_2_val_2.fq.gz
#4
~/myPrograms/Bismark/bismark --bowtie2 --multicore 50 \
/root/resources/hg38_bismark_vanilla/ \
-1 /root/annalisa_wgbs/trimmed/K562_NAD_10mM_48h_1_val_1.fq.gz \
-2 /root/annalisa_wgbs/trimmed/K562_NAD_10mM_48h_2_val_2.fq.gz
#5
~/myPrograms/Bismark/bismark --bowtie2 --multicore 50 \
/root/resources/hg38_bismark_vanilla/ \
-1 /root/annalisa_wgbs/trimmed/K562_NAD_10mM_72h_1_val_1.fq.gz \
-2 /root/annalisa_wgbs/trimmed/K562_NAD_10mM_72h_2_val_2.fq.gz
#6
~/myPrograms/Bismark/bismark --bowtie2 --multicore 50 \
/root/resources/hg38_bismark_vanilla/ \
-1 /root/annalisa_wgbs/trimmed/KG1A_AZA_2uM_48h_1_val_1.fq.gz \
-2 /root/annalisa_wgbs/trimmed/KG1A_AZA_2uM_48h_2_val_2.fq.gz
#7
~/myPrograms/Bismark/bismark --bowtie2 --multicore 50 \
/root/resources/hg38_bismark_vanilla/ \
-1 /root/annalisa_wgbs/trimmed/KG1A_AZA_2uM_72h_1_val_1.fq.gz \
-2 /root/annalisa_wgbs/trimmed/KG1A_AZA_2uM_72h_2_val_2.fq.gz
#8
~/myPrograms/Bismark/bismark --bowtie2 --multicore 50 \
/root/resources/hg38_bismark_vanilla/ \
-1 /root/annalisa_wgbs/trimmed/KG1A_Control_1_val_1.fq.gz \
-2 /root/annalisa_wgbs/trimmed/KG1A_Control_2_val_2.fq.gz
#9
~/myPrograms/Bismark/bismark --bowtie2 --multicore 50 \
/root/resources/hg38_bismark_vanilla/ \
-1 /root/annalisa_wgbs/trimmed/KG1A_NAD_5mM_48h_1_val_1.fq.gz \
-2 /root/annalisa_wgbs/trimmed/KG1A_NAD_5mM_48h_2_val_2.fq.gz
#10
~/myPrograms/Bismark/bismark --bowtie2 --multicore 50 \
/root/resources/hg38_bismark_vanilla/ \
-1 /root/annalisa_wgbs/trimmed/KG1A_NAD_5mM_72h_1_val_1.fq.gz \
-2 /root/annalisa_wgbs/trimmed/KG1A_NAD_5mM_72h_2_val_2.fq.gz
###########
