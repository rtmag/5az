data = read.table(pipe("more GSE104837_YB5_HH1_10uM_summary.txt |cut -f1,26-28,38-40,56-57"),header=T,sep="\t")


plot(data[,8],-log10(data[,9]),pch=20)
abline(h=-log10(0.05),lty=2)
abline(v=-1,lty=2)
abline(v=1,lty=2)

