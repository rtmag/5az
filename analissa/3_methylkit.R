
library(methylKit)

file.list=list(
"/root/annalisa_wgbs/bismark_report/DT24_KG1A_Control/DT24_r1_bismark_bt2_pe.CpG_report.txt",
"/root/annalisa_wgbs/bismark_report/DT58_K562_AZA_2uM_48h/DT58_r1_bismark_bt2_pe.CpG_report.txt",
"/root/annalisa_wgbs/bismark_report/DT60_K562_AZA_2uM_72h/DT60_r1_bismark_bt2_pe.CpG_report.txt",
"/root/annalisa_wgbs/bismark_report/DT6_K562_Control/DT6_r1_bismark_bt2_pe.CpG_report.txt",
"/root/annalisa_wgbs/bismark_report/DT80_KG1A_AZA_2uM_48h/DT80_r1_bismark_bt2_pe.CpG_report.txt",
"/root/annalisa_wgbs/bismark_report/DT82_KG1A_AZA_2uM_72h/DT82_r1_bismark_bt2_pe.CpG_report.txt")


# read the files to a methylRawList object: myobj
myobj=methRead(file.list,
           sample.id=list("KG1A_CTRL","KG1A_2uM","KG1A_5uM","K562_CTRL","K562_2uM","K562_5uM"),
           assembly="hg38",
           treatment=c(1,2,3,4,5,6),
           context="CpG",
           pipeline="bismarkCytosineReport",
           header=FALSE,
           mincov=4)

meth=unite(myobj, destrand=TRUE,mc.cores=40)

######################## KG1A CTRL VS KG1A 48h ###########################################################
file.list=list(
"/root/annalisa_wgbs/bismark_report/DT24_KG1A_Control/DT24_r1_bismark_bt2_pe.CpG_report.txt",
"/root/annalisa_wgbs/bismark_report/DT58_K562_AZA_2uM_48h/DT58_r1_bismark_bt2_pe.CpG_report.txt")
   
myobj=methRead(file.list,
           sample.id=list("KG1A_CTRL","KG1A_48h"),
           assembly="hg38",
           treatment=c(0,1),
           context="CpG",
           pipeline="bismarkCytosineReport",
           header=FALSE,
           mincov=4)

meth=unite(myobj, destrand=TRUE,mc.cores=40)
pooled.myDiff=calculateDiffMeth(meth,num.cores=40)
methData=getData(meth)
fisher_neb=data.frame(pooled.myDiff,KG1A_CTRL=(methData[,6]/methData[,5]),KG1A_48h=(methData[,9]/methData[,8]) ) 
saveRDS(fisher_neb,"KG1A_CTRL_VS_48h.rds")
######################## KG1A CTRL VS KG1A 72h ###########################################################
file.list=list(
"/root/annalisa_wgbs/bismark_report/DT24_KG1A_Control/DT24_r1_bismark_bt2_pe.CpG_report.txt",
"/root/annalisa_wgbs/bismark_report/DT60_K562_AZA_2uM_72h/DT60_r1_bismark_bt2_pe.CpG_report.txt")

myobj=methRead(file.list,
           sample.id=list("KG1A_CTRL","KG1A_72h"),
           assembly="hg38",
           treatment=c(0,1),
           context="CpG",
           pipeline="bismarkCytosineReport",
           header=FALSE,
           mincov=4)

meth=unite(myobj, destrand=TRUE,mc.cores=40)
pooled.myDiff=calculateDiffMeth(meth,num.cores=40)
methData=getData(meth)
fisher_neb=data.frame(pooled.myDiff,KG1A_CTRL=(methData[,6]/methData[,5]),KG1A_72h=(methData[,9]/methData[,8]) ) 
saveRDS(fisher_neb,"KG1A_CTRL_VS_72h.rds")
######################## K562 CTRL VS K562 72h ###########################################################
file.list=list(
"/root/annalisa_wgbs/bismark_report/DT6_K562_Control/DT6_r1_bismark_bt2_pe.CpG_report.txt",
"/root/annalisa_wgbs/bismark_report/DT58_K562_AZA_2uM_48h/DT58_r1_bismark_bt2_pe.CpG_report.txt")
   
myobj=methRead(file.list,
           sample.id=list("K562_CTRL","K562_48h"),
           assembly="hg38",
           treatment=c(0,1),
           context="CpG",
           pipeline="bismarkCytosineReport",
           header=FALSE,
           mincov=4)

meth=unite(myobj, destrand=TRUE,mc.cores=40)
pooled.myDiff=calculateDiffMeth(meth,num.cores=40)
methData=getData(meth)
fisher_neb=data.frame(pooled.myDiff,K562_CTRL=(methData[,6]/methData[,5]),K562_48h=(methData[,9]/methData[,8]) ) 
saveRDS(fisher_neb,"K562_CTRL_VS_48h.rds")
######################## K562 CTRL VS K562 72h ###########################################################
file.list=list(
"/root/annalisa_wgbs/bismark_report/DT6_K562_Control/DT6_r1_bismark_bt2_pe.CpG_report.txt",
"/root/annalisa_wgbs/bismark_report/DT60_K562_AZA_2uM_72h/DT60_r1_bismark_bt2_pe.CpG_report.txt")

myobj=methRead(file.list,
           sample.id=list("K562_CTRL","K562_72h"),
           assembly="hg38",
           treatment=c(0,1),
           context="CpG",
           pipeline="bismarkCytosineReport",
           header=FALSE,
           mincov=4)

meth=unite(myobj, destrand=TRUE,mc.cores=40)
pooled.myDiff=calculateDiffMeth(meth,num.cores=40)
methData=getData(meth)
fisher_neb=data.frame(pooled.myDiff,K562_CTRL=(methData[,6]/methData[,5]),K562_72h=(methData[,9]/methData[,8]) ) 
saveRDS(fisher_neb,"K562_CTRL_VS_72h.rds")
