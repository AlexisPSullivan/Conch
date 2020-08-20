setwd("~/Dropbox/PennState/PerryLab/2017-19_Conch/Data/mapDamage-filtered/results_live_shells_aln-nu_se.sorted.rmdupx2.30x30/")
live_counts<-read.table("~/Dropbox/PennState/PerryLab/2017-19_Conch/Data/mapDamage-filtered/results_live_shells_aln-nu_se.sorted.rmdupx2.30x30/lgdistribution.txt", header = TRUE,  stringsAsFactors=FALSE, quote="\"")
live_counts_df<-data.frame(live_counts)
live_counts_pos<-live_counts_df[live_counts_df$Std == "+", ]
live_length<-rep(live_counts_pos[1,2], times = live_counts_pos[1,3])
for (a in 2:nrow(live_counts_pos)){
  z<-rep(live_counts_pos[a,2], times = live_counts_pos[a,3])
  live_length<-c(live_length, z)
}
mean(live_length) #108.54
sd(live_length) #26.02117
median(live_length) #110
live_C2T<-read.table("~/Dropbox/PennState/PerryLab/2017-19_Conch/Data/mapDamage-filtered/results_live_shells_aln-nu_se.sorted.rmdupx2.30x30/5pCtoT_freq.txt", header = TRUE,  stringsAsFactors=FALSE, quote="\"")
mean(live_C2T$X5pC.T) #0.00490856
sd(live_C2T$X5pC.T) #0.00123119
live_G2A<-read.table("~/Dropbox/PennState/PerryLab/2017-19_Conch/Data/mapDamage-filtered/results_live_shells_aln-nu_se.sorted.rmdupx2.30x30/3pGtoA_freq.txt", header = TRUE,  stringsAsFactors=FALSE, quote="\"")
mean(live_G2A$X5pG.A) #0.005078068
sd(live_G2A$X5pG.A) #0.001177817




setwd("~/Dropbox/PennState/PerryLab/2017-19_Conch/Data/mapDamage-filtered/results_boiled_shells_aln-nu_se.sorted.rmdupx2.30x30/")
boiled_counts<-read.table("~/Dropbox/PennState/PerryLab/2017-19_Conch/Data/mapDamage-filtered/results_boiled_shells_aln-nu_se.sorted.rmdupx2.30x30/lgdistribution.txt", header = TRUE,  stringsAsFactors=FALSE, quote="\"")
boiled_counts_df<-data.frame(boiled_counts)
boiled_counts_pos<-boiled_counts_df[boiled_counts_df$Std == "+", ]
boiled_length<-rep(boiled_counts_pos[1,2], times = boiled_counts_pos[1,3])
for (a in 2:nrow(boiled_counts_pos)){
  z<-rep(boiled_counts_pos[a,2], times = boiled_counts_pos[a,3])
  boiled_length<-c(boiled_length, z)
}
mean(boiled_length) #96.09657
sd(boiled_length) #26.82441
median(boiled_length) #94
boiled_C2T<-read.table("~/Dropbox/PennState/PerryLab/2017-19_Conch/Data/mapDamage-filtered/results_boiled_shells_aln-nu_se.sorted.rmdupx2.30x30/5pCtoT_freq.txt", header = TRUE,  stringsAsFactors=FALSE, quote="\"")
mean(boiled_C2T$X5pC.T) #0.009636109
sd(boiled_C2T$X5pC.T) #0.005154947
boiled_G2A<-read.table("~/Dropbox/PennState/PerryLab/2017-19_Conch/Data/mapDamage-filtered/results_boiled_shells_aln-nu_se.sorted.rmdupx2.30x30/3pGtoA_freq.txt", header = TRUE,  stringsAsFactors=FALSE, quote="\"")
mean(boiled_G2A$X5pG.A) #0.008762754
sd(boiled_G2A$X5pG.A) #0.002949869




setwd("~/Dropbox/PennState/PerryLab/2017-19_Conch/Data/mapDamage-filtered/results_arch_shells_aln-nu_se.sorted.rmdupx2.30x30/")
arch_counts<-read.table("~/Dropbox/PennState/PerryLab/2017-19_Conch/Data/mapDamage-filtered/results_arch_shells_aln-nu_se.sorted.rmdupx2.30x30/lgdistribution.txt", header = TRUE,  stringsAsFactors=FALSE, quote="\"")
arch_counts_df<-data.frame(arch_counts)
arch_counts_pos<-arch_counts_df[arch_counts_df$Std == "+", ]
arch_length<-rep(arch_counts_pos[1,2], times = arch_counts_pos[1,3])
for (a in 2:nrow(arch_counts_pos)){
  z<-rep(arch_counts_pos[a,2], times = arch_counts_pos[a,3])
  arch_length<-c(arch_length, z)
}
mean(arch_length) #96.77386
sd(arch_length) #28.10969
median(arch_length) #92
arch_C2T<-read.table("~/Dropbox/PennState/PerryLab/2017-19_Conch/Data/mapDamage-filtered/results_arch_shells_aln-nu_se.sorted.rmdupx2.30x30/5pCtoT_freq.txt", header = TRUE,  stringsAsFactors=FALSE, quote="\"")
mean(arch_C2T$X5pC.T) #0.04128237
sd(arch_C2T$X5pC.T) #0.05012602
arch_G2A<-read.table("~/Dropbox/PennState/PerryLab/2017-19_Conch/Data/mapDamage-filtered/results_arch_shells_aln-nu_se.sorted.rmdupx2.30x30/3pGtoA_freq.txt", header = TRUE,  stringsAsFactors=FALSE, quote="\"")
mean(arch_G2A$X5pG.A) # 0.03991273
sd(arch_G2A$X5pG.A) #0.05035402


setwd("~/Dropbox/PennState/PerryLab/2017-19_Conch/Data/mapDamage-filtered/results_paleo_shells_aln-nu_se.sorted.rmdupx2.30x30/")
paleo_counts<-read.table("~/Dropbox/PennState/PerryLab/2017-19_Conch/Data/mapDamage-filtered/results_paleo_shells_aln-nu_se.sorted.rmdupx2.30x30/lgdistribution.txt", header = TRUE,  stringsAsFactors=FALSE, quote="\"")
paleo_counts_df<-data.frame(paleo_counts)
paleo_counts_pos<-paleo_counts_df[paleo_counts_df$Std == "+", ]
paleo_length<-rep(paleo_counts_pos[1,2], times = paleo_counts_pos[1,3])
for (a in 2:nrow(paleo_counts_pos)){
  z<-rep(paleo_counts_pos[a,2], times = paleo_counts_pos[a,3])
  paleo_length<-c(paleo_length, z)
}
mean(paleo_length) #76.88542
sd(paleo_length) #28.06191
median(paleo_length) #74.5
paleo_C2T<-read.table("~/Dropbox/PennState/PerryLab/2017-19_Conch/Data/mapDamage-filtered/results_paleo_shells_aln-nu_se.sorted.rmdupx2.30x30/5pCtoT_freq.txt", header = TRUE,  stringsAsFactors=FALSE, quote="\"")
mean(paleo_C2T$X5pC.T) #0.04161468
sd(paleo_C2T$X5pC.T) #0.05025267
paleo_G2A<-read.table("~/Dropbox/PennState/PerryLab/2017-19_Conch/Data/mapDamage-filtered/results_paleo_shells_aln-nu_se.sorted.rmdupx2.30x30/3pGtoA_freq.txt", header = TRUE,  stringsAsFactors=FALSE, quote="\"")
mean(paleo_G2A$X5pG.A) #0.04224306
sd(paleo_G2A$X5pG.A) #0.0612052





setwd("~/Dropbox/PennState/PerryLab/2017-19_Conch/Data/")
options(stringsAsFactors = FALSE)
strombus_stats<-read.csv("~/Dropbox/PennState/PerryLab/2017-19_Conch/Data/ConchStatsNew.csv", quote="\"")
strombus_stats_df<-data.frame(strombus_stats)
names(strombus_stats_df) = c("Ind_Name", "Site_Age", "Site", "Source", "Ind", "raw_reads", "mem_Mito_wNuc", "aln_Mito_wNuc", "aln_Nuc", "mem_Nuc")

#expected<-strombus_stats_df$Nuc*0.0018
#strombus_stats_df_exp<-cbind(strombus_stats_df, expected)
#strombus_stats_df_exp<-strombus_stats_df_exp[,-6]
#strombus_stats_df_exp_chisq<-strombus_stats_df_exp[,-c(1:4, 7)]
#strombus_stats_df_exp_chisq<-strombus_stats_df_exp_chisq[-c(1:10, 14),]
#chisq.test(strombus_stats_df_exp_chisq$Mito_wNuc, strombus_stats_df_exp_chisq$expected)
##Pearson's Chi-squared test
##data:  strombus_stats_df_exp_chisq$Mito_wNuc and strombus_stats_df_exp_chisq$expected
##X-squared = 78, df = 72, p-value = 0.2939

#CayoAgua1_live_seq, shape = 24, fill = "#009E73"
#CayoAgua2_boil_seq, shape = 21, col = "black", fill = "#009E73"
#BocaDrago_live_seq, shape = 25, fill = "#009E73"
#U60_seq, shape = 21, col = "black", fill = "#D55E00"
#U61_seq, shape = 21, col = "black", fill = "#D55E00"
#Lennond_seq, shape = 21, col = "black", fill = "#56B4E9"

BATissue<-strombus_stats_df[1:2,]
CATissue<-strombus_stats_df[3:5,]
liveTissue<-strombus_stats_df[1:5,]
BocaDrago<-strombus_stats_df[6:7,]
CayoAgua<-strombus_stats_df[8:10,]
liveShell<-strombus_stats_df[6:10,]
CABoil<-strombus_stats_df[11:13,]
U60<-strombus_stats_df[14:15,]
U61<-strombus_stats_df[16:18,]
archShell<-strombus_stats_df[14:18,]
Lennond<-strombus_stats_df[19:23,]

##mapped reads / total reads for each group
liveTissue_proportion<-mean(liveTissue$aln_Nuc)/mean(liveTissue$raw_reads) #0.0687291
liveShell_proportion<-mean(liveShell$aln_Nuc)/mean(liveShell$raw_reads) #0.01452356
CABoil_proportion<-mean(CABoil$aln_Nuc)/mean(CABoil$raw_reads) #0.0005403839
archShell_proportion<-mean(archShell$aln_Nuc)/mean(archShell$raw_reads) #0.001267277
Lennond_proportion<-mean(Lennond$aln_Nuc)/mean(Lennond$raw_reads) #1.206347e-05

CABoil_proportion_indiv<-CABoil$aln_Nuc/CABoil$raw_reads
archShell_proportion_indiv<-archShell$aln_Nuc/archShell$raw_reads

t.test(CABoil_proportion_indiv, archShell_proportion_indiv)
#Welch Two Sample t-test
#data:  CABoil_proportion_indiv and archShell_proportion_indiv
#t = -1.3607, df = 5.9952, p-value = 0.2225
#alternative hypothesis: true difference in means is not equal to 0
#95 percent confidence interval:
# -0.001788790  0.000510478
#sample estimates:
#   mean of x    mean of y 
#0.0004958834 0.0011350393 

##bwa aln
liveTissue_aln_fisher<-c(sum(as.numeric(liveTissue$aln_Mito_wNuc)), sum(as.numeric(liveTissue$aln_Nuc)))
liveShell_aln_fisher<-c(sum(as.numeric(liveShell$aln_Mito_wNuc)), sum(as.numeric(liveShell$aln_Nuc)))
live_aln_fisher<-rbind(liveTissue_aln_fisher, liveShell_aln_fisher)
colnames(live_aln_fisher) = c("aln_Mito_wNuc", "aln_Nuc")

fisher.test(live_aln_fisher)
#Fisher's Exact Test for Count Data
#data:  live_aln_fisher
#p-value = 1.976e-05
#alternative hypothesis: true odds ratio is not equal to 1
#95 percent confidence interval:
# 0.6884428 0.8681427
#sample estimates:
#odds ratio 
# 0.7718221 


##bwa mem
liveTissue_mem_fisher<-c(sum(as.numeric(liveTissue$mem_Mito_wNuc)), sum(as.numeric(liveTissue$mem_Nuc), as.numeric(liveTissue$mem_Mito_wNuc)))
liveShell_mem_fisher<-c(sum(as.numeric(liveShell$mem_Mito_wNuc)), sum(as.numeric(liveShell$mem_Nuc), as.numeric(liveShell$mem_Mito_wNuc)))
live_mem_fisher<-rbind(liveTissue_mem_fisher, liveShell_mem_fisher)
colnames(live_mem_fisher) = c("mem_Mito_wNuc", "mem_Nuc")

fisher.test(live_mem_fisher)
#Fisher's Exact Test for Count Data
#data:  live_mem_fisher
#p-value = 0.3691
#alternative hypothesis: true odds ratio is not equal to 1
#95 percent confidence interval:
#  0.9055666 1.0387496
#sample estimates:
#  odds ratio 
#0.9692986 

#mito proportion test
liveShell_aln_fisher<-c(300, 167348) #0.001792672
CABoil_aln_fisher<-c(15, 6177) #0.002428363
arch_aln_fisher<-c(33, 22588) #0.001460953
paleo_aln_fisher<-c(0, 220) #0.0000

live_CABoil_aln_fisher<-rbind(liveShell_aln_fisher, CABoil_aln_fisher)
colnames(live_CABoil_aln_fisher) = c("aln_Mito_wNuc", "aln_Nuc")
fisher.test(live_CABoil_aln_fisher)
#Fisher's Exact Test for Count Data
#data:  live_CABoil_aln_fisher
#p-value = 0.2247
#alternative hypothesis: true odds ratio is not equal to 1
#95 percent confidence interval:
# 0.4400897 1.3364193
#sample estimates:
#odds ratio 
# 0.7382246

live_arch_aln_fisher<-rbind(liveShell_aln_fisher, arch_aln_fisher)
colnames(live_arch_aln_fisher) = c("aln_Mito_wNuc", "aln_Nuc")
fisher.test(live_arch_aln_fisher)
#Fisher's Exact Test for Count Data
#data:  live_arch_aln_fisher
#p-value = 0.3087
#alternative hypothesis: true odds ratio is not equal to 1
#95 percent confidence interval:
# 0.8549345 1.8166230
#sample estimates:
#odds ratio 
#  1.227434 

live_paleo_aln_fisher<-rbind(liveShell_aln_fisher, paleo_aln_fisher)
colnames(live_paleo_aln_fisher) = c("aln_Mito_wNuc", "aln_Nuc")
fisher.test(live_paleo_aln_fisher)
#Fisher's Exact Test for Count Data
#data:  live_paleo_aln_fisher
#p-value = 1
#alternative hypothesis: true odds ratio is not equal to 1
#95 percent confidence interval:
# 0.1055625       Inf
#sample estimates:
#odds ratio 
#       Inf 


new_pub = c("#D55E00", "#009E73", "#009E73", "#009E73", "#56B4E9")

library(ggplot2)
ggplot(no_blank, aes(x=Site_Age, y=Mito_noNuc, fill=Site_Age)) +
  geom_boxplot(na.rm = TRUE, outlier.shape = NA) +
  #geom_violin(na.rm = TRUE, trim = FALSE) +
  scale_y_continuous(trans='log10') +
  scale_fill_manual(values=new_pub) +
  geom_point(data=CATissue, shape = 24, fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=CayoAgua, shape = 24, fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=CABoil, shape = 21, col = "black", fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U60, shape = 21, col = "black", fill = "#D55E00", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=BATissue, shape = 25, fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=BocaDrago, shape = 25, fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U61, shape = 21, col = "black", fill = "#D55E00", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=Lennond, shape = 21, col = "black", fill = "#56B4E9", position = position_jitter(w = 0.1, h = 0)) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank()) +
  xlab("Site") + ylab("Mito_noNuc Reads Filtered for Quality (Q30) & Length (>30 bp)") + 
  ggtitle("Mapped Reads Per Individual Shell") 

library(ggplot2)
ggplot(no_blank, aes(x=Site_Age, y=Mito_wNuc, fill=Site_Age)) +
  geom_boxplot(na.rm = TRUE, outlier.shape = NA) +
  #geom_violin(na.rm = TRUE, trim = FALSE) +
  scale_y_continuous(trans='log10') +
  scale_fill_manual(values=new_pub) +
  geom_point(data=CATissue, shape = 24, fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=CayoAgua, shape = 24, fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=CABoil, shape = 21, col = "black", fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U60, shape = 21, col = "black", fill = "#D55E00", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=BATissue, shape = 25, fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=BocaDrago, shape = 25, fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U61, shape = 21, col = "black", fill = "#D55E00", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=Lennond, shape = 21, col = "black", fill = "#56B4E9", position = position_jitter(w = 0.1, h = 0)) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank()) +
  xlab("Site") + ylab("Mito_wNuc Reads Filtered for Quality (Q30) & Length (>30 bp)") + 
  ggtitle("Mapped Reads Per Individual Shell") 

library(ggplot2)
ggplot(no_blank, aes(x=Site_Age, y=Nuc, fill=Site_Age)) +
  geom_boxplot(na.rm = TRUE, outlier.shape = NA) +
  #geom_violin(na.rm = TRUE, trim = FALSE) +
  scale_y_continuous(trans='log10') +
  scale_fill_manual(values=new_pub) +
  geom_point(data=CATissue, shape = 24, fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=CayoAgua, shape = 24, fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=CABoil, shape = 21, col = "black", fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U60, shape = 21, col = "black", fill = "#D55E00", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=BATissue, shape = 25, fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=BocaDrago, shape = 25, fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U61, shape = 21, col = "black", fill = "#D55E00", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=Lennond, shape = 21, col = "black", fill = "#56B4E9", position = position_jitter(w = 0.1, h = 0)) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank()) +
  xlab("Site") + ylab("Nuc Reads Filtered for Quality (Q30) & Length (>30 bp)") + 
  ggtitle("Mapped Reads Per Individual Shell") 




