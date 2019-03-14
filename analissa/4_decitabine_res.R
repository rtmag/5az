fisher_neb = readRDS("KG1A_CTRL_VS_48h.rds")
diff=fisher_neb[(fisher_neb[,6]<0.05 & fisher_neb[,7]<(-50)),]
dim(diff) # 10804
undiff=fisher_neb[ fisher_neb[,7]>(-10)  &  rowMeans(cbind(fisher_neb[,8],fisher_neb[,9]))>.90 ,]
dim(undiff) # 7654032
######################################################################################################
fisher_neb = readRDS("KG1A_CTRL_VS_72h.rds")
diff=fisher_neb[(fisher_neb[,6]<0.05 & fisher_neb[,7]<(-50)),]
dim(diff) # 15072
undiff=fisher_neb[ fisher_neb[,7]>(-10)  &  rowMeans(cbind(fisher_neb[,8],fisher_neb[,9]))>.90 ,]
dim(undiff) # 7410582
######################################################################################################
fisher_neb = readRDS("K562_CTRL_VS_48h.rds")
diff=fisher_neb[(fisher_neb[,6]<0.05 & fisher_neb[,7]<(-50)),]
dim(diff) # 245721
undiff=fisher_neb[ fisher_neb[,7]>(-10)  &  rowMeans(cbind(fisher_neb[,8],fisher_neb[,9]))>.90 ,]
dim(undiff) # 1318947
######################################################################################################
fisher_neb = readRDS("K562_CTRL_VS_72h.rds")
diff=fisher_neb[(fisher_neb[,6]<0.05 & fisher_neb[,7]<(-50)),]
dim(diff) # 462798
undiff=fisher_neb[ fisher_neb[,7]>(-10)  &  rowMeans(cbind(fisher_neb[,8],fisher_neb[,9]))>.90 ,]
dim(undiff) # 1189724
