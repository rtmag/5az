
samtools index /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/ATF3/ENCFF000OYI_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/CBX3/ENCFF000OYG_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/CBX3/ENCFF000OYN_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/CEBPB/CEBPB_rep1Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/CEBPB/CEBPB_rep2Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/CTCF/ENCFF000OYZ_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/CTCF/ENCFF000OZC_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/EGR1/ENCFF000OZI_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/EGR1/ENCFF000OZL_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/ELF1/ENCFF000OZS_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/ELF1/ENCFF000OZU_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/FOSL1/ENCFF000OZV_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/FOSL1/ENCFF000OZZ_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/JUND/ENCFF000PAH_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/JUND/ENCFF000PAI_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/MAX/ENCFF000PAP_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/MAX/ENCFF000PAQ_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/RAD21/ENCFF000PBK_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/RAD21/ENCFF000PBP_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/REST/ENCFF000PAW_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/REST/ENCFF000PAX_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/SIN3A/ENCFF000PCD_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/SIN3A/ENCFF000PCE_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/SP1/ENCFF000PCM_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/SP1/ENCFF000PCT_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/SRF/ENCFF000PCS_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/SRF/ENCFF000PCV_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/TCF7L2/ENCFF000WXH_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/TCF7L2/ENCFF000WXJ_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/TEAD4/ENCFF000PDC_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/TEAD4/ENCFF000PDE_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/USF1/ENCFF000PDJ_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/USF1/ENCFF000PDL_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/YY1/ENCFF000PDQ_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/YY1/ENCFF000PDT_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/ZBTB33/ENCFF000PDZ_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/ZBTB33/ENCFF000PEC_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/ZNF274/ENCFF002AAP_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/ZNF274/ENCFF002AAU_Aligned.sortedByCoord.out.bam &
samtools index /root/TF_encode_quy/NICE-seq/25000/HCT116_25000_NicE_Aligned.sortedByCoord.out.bam
##
samtools merge -h /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/ATF3/ATF3_merged.bam /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/ATF3/ENCFF000OYI_Aligned.sortedByCoord.out.bam &
samtools merge -h /root/TF_encode_quy/CBX3/ENCFF000OYG_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/CBX3/CBX3_merged.bam /root/TF_encode_quy/CBX3/ENCFF000OYG_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/CBX3/ENCFF000OYN_Aligned.sortedByCoord.out.bam &
samtools merge -h /root/TF_encode_quy/CEBPB/CEBPB_rep1Aligned.sortedByCoord.out.bam /root/TF_encode_quy/CEBPB/CEBPB_merged.bam /root/TF_encode_quy/CEBPB/CEBPB_rep1Aligned.sortedByCoord.out.bam /root/TF_encode_quy/CEBPB/CEBPB_rep2Aligned.sortedByCoord.out.bam &
samtools merge -h /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/CTCF/CTCF_merged.bam /root/TF_encode_quy/CTCF/ENCFF000OYZ_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/CTCF/ENCFF000OZC_Aligned.sortedByCoord.out.bam &
samtools merge -h /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/EGR1/EGR1_merged.bam /root/TF_encode_quy/EGR1/ENCFF000OZI_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/EGR1/ENCFF000OZL_Aligned.sortedByCoord.out.bam &
samtools merge -h /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/ELF1/ELF1_merged.bam /root/TF_encode_quy/ELF1/ENCFF000OZS_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/ELF1/ENCFF000OZU_Aligned.sortedByCoord.out.bam &
samtools merge -h /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/FOSL1/FOSL1_merged.bam /root/TF_encode_quy/FOSL1/ENCFF000OZV_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/FOSL1/ENCFF000OZZ_Aligned.sortedByCoord.out.bam &
samtools merge -h /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/JUND/JUND_merged.bam /root/TF_encode_quy/JUND/ENCFF000PAH_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/JUND/ENCFF000PAI_Aligned.sortedByCoord.out.bam &
samtools merge -h /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/MAX/MAX_merged.bam /root/TF_encode_quy/MAX/ENCFF000PAP_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/MAX/ENCFF000PAQ_Aligned.sortedByCoord.out.bam &
samtools merge -h /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/RAD21/RAD21_merged.bam /root/TF_encode_quy/RAD21/ENCFF000PBK_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/RAD21/ENCFF000PBP_Aligned.sortedByCoord.out.bam &
samtools merge -h /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/REST/REST_merged.bam /root/TF_encode_quy/REST/ENCFF000PAW_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/REST/ENCFF000PAX_Aligned.sortedByCoord.out.bam &
samtools merge -h /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/SIN3A/SIN3A_merged.bam /root/TF_encode_quy/SIN3A/ENCFF000PCD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/SIN3A/ENCFF000PCE_Aligned.sortedByCoord.out.bam &
samtools merge -h /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/SP1/SP1_merged.bam /root/TF_encode_quy/SP1/ENCFF000PCM_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/SP1/ENCFF000PCT_Aligned.sortedByCoord.out.bam &
samtools merge -h /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/SRF/SRF_merged.bam /root/TF_encode_quy/SRF/ENCFF000PCS_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/SRF/ENCFF000PCV_Aligned.sortedByCoord.out.bam &
samtools merge -h /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/TCF7L2/TCF7L2_merged.bam /root/TF_encode_quy/TCF7L2/ENCFF000WXH_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/TCF7L2/ENCFF000WXJ_Aligned.sortedByCoord.out.bam &
samtools merge -h /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/TEAD4/TEAD4_merged.bam /root/TF_encode_quy/TEAD4/ENCFF000PDC_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/TEAD4/ENCFF000PDE_Aligned.sortedByCoord.out.bam &
samtools merge -h /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/USF1/USF1_merged.bam /root/TF_encode_quy/USF1/ENCFF000PDJ_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/USF1/ENCFF000PDL_Aligned.sortedByCoord.out.bam &
samtools merge -h /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/YY1/YY1_merged.bam /root/TF_encode_quy/YY1/ENCFF000PDQ_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/YY1/ENCFF000PDT_Aligned.sortedByCoord.out.bam &
samtools merge -h /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/ZBTB33/ZBTB33_merged.bam /root/TF_encode_quy/ZBTB33/ENCFF000PDZ_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/ZBTB33/ENCFF000PEC_Aligned.sortedByCoord.out.bam &
samtools merge -h /root/TF_encode_quy/ATF3/ENCFF000OYD_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/ZNF274/ZNF274_merged.bam /root/TF_encode_quy/ZNF274/ENCFF002AAP_Aligned.sortedByCoord.out.bam /root/TF_encode_quy/ZNF274/ENCFF002AAU_Aligned.sortedByCoord.out.bam &
##
samtools sort /root/TF_encode_quy/ATF3/ATF3_merged.bam -o /root/TF_encode_quy/bam/ATF3_merged_sorted.bam &
samtools sort /root/TF_encode_quy/CBX3/CBX3_merged.bam -o /root/TF_encode_quy/bam/CBX3_merged_sorted.bam &
samtools sort /root/TF_encode_quy/CEBPB/CEBPB_merged.bam -o /root/TF_encode_quy/bam/CEBPB_merged_sorted.bam &
samtools sort /root/TF_encode_quy/CTCF/CTCF_merged.bam -o /root/TF_encode_quy/bam/CTCF_merged_sorted.bam &
samtools sort /root/TF_encode_quy/EGR1/EGR1_merged.bam -o /root/TF_encode_quy/bam/EGR1_merged_sorted.bam &
samtools sort /root/TF_encode_quy/ELF1/ELF1_merged.bam -o /root/TF_encode_quy/bam/ELF1_merged_sorted.bam &
samtools sort /root/TF_encode_quy/FOSL1/FOSL1_merged.bam -o /root/TF_encode_quy/bam/FOSL1_merged_sorted.bam &
samtools sort /root/TF_encode_quy/JUND/JUND_merged.bam -o /root/TF_encode_quy/bam/JUND_merged_sorted.bam &
samtools sort /root/TF_encode_quy/MAX/MAX_merged.bam -o /root/TF_encode_quy/bam/MAX_merged_sorted.bam &
samtools sort /root/TF_encode_quy/RAD21/RAD21_merged.bam -o /root/TF_encode_quy/bam/RAD21_merged_sorted.bam &
samtools sort /root/TF_encode_quy/REST/REST_merged.bam -o /root/TF_encode_quy/bam/REST_merged_sorted.bam &
samtools sort /root/TF_encode_quy/SIN3A/SIN3A_merged.bam -o /root/TF_encode_quy/bam/SIN3A_merged_sorted.bam &
samtools sort /root/TF_encode_quy/SP1/SP1_merged.bam -o /root/TF_encode_quy/bam/SP1_merged_sorted.bam &
samtools sort /root/TF_encode_quy/SRF/SRF_merged.bam -o /root/TF_encode_quy/bam/SRF_merged_sorted.bam &
samtools sort /root/TF_encode_quy/TCF7L2/TCF7L2_merged.bam -o /root/TF_encode_quy/bam/TCF7L2_merged_sorted.bam &
samtools sort /root/TF_encode_quy/TEAD4/TEAD4_merged.bam -o /root/TF_encode_quy/bam/TEAD4_merged_sorted.bam &
samtools sort /root/TF_encode_quy/USF1/USF1_merged.bam -o /root/TF_encode_quy/bam/USF1_merged_sorted.bam &
samtools sort /root/TF_encode_quy/YY1/YY1_merged.bam -o /root/TF_encode_quy/bam/YY1_merged_sorted.bam &
samtools sort /root/TF_encode_quy/ZBTB33/ZBTB33_merged.bam -o /root/TF_encode_quy/bam/ZBTB33_merged_sorted.bam &
samtools sort /root/TF_encode_quy/ZNF274/ZNF274_merged.bam -o /root/TF_encode_quy/bam/ZNF274_merged_sorted.bam &
########
samtools index /root/TF_encode_quy/bam/ATF3_merged_sorted.bam &
samtools index /root/TF_encode_quy/bam/CBX3_merged_sorted.bam &
samtools index /root/TF_encode_quy/bam/CEBPB_merged_sorted.bam &
samtools index /root/TF_encode_quy/bam/CTCF_merged_sorted.bam &
samtools index /root/TF_encode_quy/bam/EGR1_merged_sorted.bam &
samtools index /root/TF_encode_quy/bam/ELF1_merged_sorted.bam &
samtools index /root/TF_encode_quy/bam/FOSL1_merged_sorted.bam &
samtools index /root/TF_encode_quy/bam/JUND_merged_sorted.bam &
samtools index /root/TF_encode_quy/bam/MAX_merged_sorted.bam &
samtools index /root/TF_encode_quy/bam/RAD21_merged_sorted.bam &
samtools index /root/TF_encode_quy/bam/REST_merged_sorted.bam &
samtools index /root/TF_encode_quy/bam/SIN3A_merged_sorted.bam &
samtools index /root/TF_encode_quy/bam/SP1_merged_sorted.bam &
samtools index /root/TF_encode_quy/bam/SRF_merged_sorted.bam &
samtools index /root/TF_encode_quy/bam/TCF7L2_merged_sorted.bam &
samtools index /root/TF_encode_quy/bam/TEAD4_merged_sorted.bam &
samtools index /root/TF_encode_quy/bam/USF1_merged_sorted.bam &
samtools index /root/TF_encode_quy/bam/YY1_merged_sorted.bam &
samtools index /root/TF_encode_quy/bam/ZBTB33_merged_sorted.bam &
samtools index /root/TF_encode_quy/bam/ZNF274_merged_sorted.bam &
#######

########
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/ATF3_merged_sorted.bam -o /root/TF_encode_quy/bw/ATF3.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/CBX3_merged_sorted.bam -o /root/TF_encode_quy/bw/CBX3.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/CEBPB_merged_sorted.bam -o /root/TF_encode_quy/bw/CEBPB.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/CTCF_merged_sorted.bam -o /root/TF_encode_quy/bw/CTCF.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/EGR1_merged_sorted.bam -o /root/TF_encode_quy/bw/EGR1.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/ELF1_merged_sorted.bam -o /root/TF_encode_quy/bw/ELF1.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/FOSL1_merged_sorted.bam -o /root/TF_encode_quy/bw/FOSL1.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/JUND_merged_sorted.bam -o /root/TF_encode_quy/bw/JUND.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/MAX_merged_sorted.bam -o /root/TF_encode_quy/bw/MAX.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/RAD21_merged_sorted.bam -o /root/TF_encode_quy/bw/RAD21.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/REST_merged_sorted.bam -o /root/TF_encode_quy/bw/REST.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/SIN3A_merged_sorted.bam -o /root/TF_encode_quy/bw/SIN3A.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/SP1_merged_sorted.bam -o /root/TF_encode_quy/bw/SP1.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/SRF_merged_sorted.bam -o /root/TF_encode_quy/bw/SRF.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/TCF7L2_merged_sorted.bam -o /root/TF_encode_quy/bw/TCF7L2.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/TEAD4_merged_sorted.bam -o /root/TF_encode_quy/bw/TEAD4.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/USF1_merged_sorted.bam -o /root/TF_encode_quy/bw/USF1.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/YY1_merged_sorted.bam -o /root/TF_encode_quy/bw/YY1.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/ZBTB33_merged_sorted.bam -o /root/TF_encode_quy/bw/ZBTB33.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/ZNF274_merged_sorted.bam -o /root/TF_encode_quy/bw/ZNF274.bw
bamCoverage -p max -bs 1 -e 200 --normalizeUsingRPKM -b /root/TF_encode_quy/bam/nice25000_sorted.bam -o /root/TF_encode_quy/bw/nice25000.bw
###
##
#


