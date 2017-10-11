library(methylKit)

file.list=list( "HCT116.Decitabine.WGBS.run1.1_bismark_bt2_pe.CpG_report.txt",                
                "HCT116.Decitabine.WGBS.run2.1_bismark_bt2_pe.CpG_report.txt",
                "HCT116.control.WGBS.run1.1_bismark_bt2_pe.CpG_report.txt",
                "HCT116.control.WGBS.run2.1_bismark_bt2_pe.CpG_report.txt" )

# read the files to a methylRawList object: myobj
myobj=methRead(file.list,
           sample.id=list("decitabine1","decitabine2","control1","control2"),
           assembly="hg38",
           treatment=c(1,1,0,0),
           context="CpG",
           pipeline="bismarkCytosineReport",
           header=FALSE,
               mincov=1)

meth=unite(myobj, destrand=TRUE,mc.cores=40)
