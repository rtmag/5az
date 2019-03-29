library(gplots)
library(factoextra)
library(RColorBrewer)
library(graphics)
library(ggplot2)


data = read.table(pipe("more GSE104837_YB5_HH1_10uM_summary.txt |cut -f1,26-28,38-40,56-57"),header=T,sep="\t")

c1 = read.table("cluster1_3_4_names.txt",sep="\t")
c2 = read.table("cluster2_5_lsgenes_names.txt",sep="\t")

pdf("Decitabine_volcano.pdf")
plot(data[,8],-log10(data[,9]),xlab="Log2FC",main = "SW48 cells: Decitabine Treatment",
              ylab=expression('-Log'[10]*' q-values'),col=alpha("grey",.5),pch=20 )

  abline(v=-1,lty = 2,col="black")
  abline(v=1,lty = 2,col="black")
  abline(h=-log10(0.05),lty = 2,col="black")

  points(data[,8][data[,1] %in% c1[,1]],
       -log10(data[,9])[data[,1] %in% c1[,1]],
      col=alpha("red",.5),pch=20)

  points(data[,8][data[,1] %in% c2[,1]],
       -log10(data[,9])[data[,1] %in% c2[,1]],
      col=alpha("green",.5),pch=20)

  points(data[,8][which(data[,1]=="CDKN1A")],
       -log10(data[,9])[which(data[,1]=="CDKN1A")],
      col=alpha("red",1),pch=20)

                        
  legend("topright", paste("Decitabine",":",length(which(data[,8]>1 & data[,9]<0.05))), bty="n") 
  legend("topleft",  paste("Control",":",length(which(data[,8]<(-1) & data[,9]<0.05))), bty="n") 
dev.off()

pdf("label1.pdf")
plot(NULL)
legend("left",legend=c("Active in P53+/DNMT1+","Repressed in P53+/DNMT1+"),fill=c("red","green"), border=T, bty="n" )
dev.off()

ix = abs(data[,8])>1 & data[,9]<0.05

write.table(data[which(data[ix,1] %in% c1[,1]),1],"test.txt",sep="\t",quote=F,row.names=F,col.names=F)
data[which(data[ix,1] %in% c2[,1]),1]
###############################################################################################
options(scipen=999)
library(gplots)
library(factoextra)
library(RColorBrewer)
  colors <- rev(colorRampPalette( (brewer.pal(9, "RdBu")) )(9))

data = read.table("GSE101336_processed_matrix_FPKM.txt",header=T,sep="\t")

sig_vsd = data[toupper(data[,1]) %in% c(as.character(c1[,1]),as.character(c2[,1])) ,18:20]
genename= as.character(data[toupper(data[,1]) %in% c(as.character(c1[,1]),as.character(c2[,1])) ,1])
genename = genename[apply(sig_vsd,1,sd)!=0]
sig_vsd = sig_vsd[apply(sig_vsd,1,sd)!=0,]
sig_vsd = sig_vsd-rowMeans(sig_vsd)

pdf("KPC_mouse_decitabine_heatmap.pdf")
heatmap.2(as.matrix(sig_vsd),col=colors,scale="row", trace="none",distfun = function(x) get_dist(x,method="pearson"),srtCol=15,
margins=c(5,22),  xlab="", ylab="",key.title="Gene expression",cexCol=.65,cexRow=.8,Colv=F,dendrogram="row")
dev.off()

x = heatmap.2(as.matrix(sig_vsd),col=colors,scale="row", trace="none",distfun = function(x) get_dist(x,method="pearson"),srtCol=15,
margins=c(5,22),  xlab="", ylab="",key.title="Gene expression",cexCol=.65,cexRow=.8,Colv=F,dendrogram="row")

hc <- as.hclust( x$rowDendrogram )
groups=cutree( hc, k=3 )
track=as.numeric(groups)    

write.table(genename[track==1],"c1.txt",sep="\t",quote=F,col.names=F,row.names=F)
write.table(genename[track==2],"c2.txt",sep="\t",quote=F,col.names=F,row.names=F)
write.table(genename[track==3],"c3.txt",sep="\t",quote=F,col.names=F,row.names=F)

