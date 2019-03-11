
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

#Pooled
pooled.meth=pool(meth,sample.ids=c("decitabine","control"))
pooled.meth=filterByCoverage(pooled.meth,lo.count=3)
pooled.myDiff=calculateDiffMeth(pooled.meth,num.cores=40)
##


