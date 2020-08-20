setwd("~/Dropbox/PennState/PerryLab/2017-19_Conch/")

options(stringsAsFactors = FALSE)

strombus_morph_all<-read.csv("~/Dropbox/PennState/PerryLab/2017-19_Conch/StrombusMorph.csv", quote="\"")

strombus_morph_df<-data.frame(strombus_morph_all)
names(strombus_morph_df) = c("Ind_Name", "Site_Age", "Site", "Ind_Num", "SH", "SW", "LT", "MW", "Sex")

tissue_seq_samples<-strombus_morph_df[c(13, 15, 16, 23, 30),]
shell_seq_samples<-strombus_morph_df[c(34, 35, 39, 45, 53, 54, 56, 58, 60, 64, 65, 66, 67),]

seq_samples<-rbind(tissue_seq_samples, shell_seq_samples)
CayoAgua1_seq<-seq_samples[1:3,]
BocaDrago_seq<-seq_samples[4:5,]
U61_seq<-seq_samples[6:8,]
U60_seq<-seq_samples[9:10,]
Lennond_seq<-seq_samples[11:15,]
CayoAgua2_seq<-seq_samples[16:18,]

strombus_morph_noMS1_df<-strombus_morph_df[11:80,] #no Mod Site 1
CayoAgua1_live_seq<-strombus_morph_noMS1_df[c(3, 5, 6),]
CayoAgua1_live_noSeq<-strombus_morph_noMS1_df[c(1, 2, 4, 7, 8, 9, 10),]
CayoAgua2_boil_seq<-strombus_morph_noMS1_df[55:57,]
CayoAgua2_boil_noSeq<-strombus_morph_noMS1_df[58:65,]
CayoAgua1_dock_noSeq<-strombus_morph_noMS1_df[66:70,]
BocaDrago_live_seq<-strombus_morph_noMS1_df[c(13, 20),]
BocaDrago_live_noSeq<-strombus_morph_noMS1_df[c(11, 12, 14:19),]
U61_seq<-strombus_morph_noMS1_df[c(24:25, 27),]
U61_noSeq<-strombus_morph_noMS1_df[c(21:23, 26, 28:34),]
U60_seq<-strombus_morph_noMS1_df[c(35, 43),]
U60_noSeq<-strombus_morph_noMS1_df[c(36:42),]
Lennond_seq<-strombus_morph_noMS1_df[c(44, 46, 48, 50, 54),]
Lennond_noSeq<-strombus_morph_noMS1_df[c(45, 47, 49, 51:53),]

##mean and median points for sites/ages
mod_mean<-mean(strombus_morph_noMS1_df[c(1:20, 55:70),8]) #2.43536
mod_median<-median(strombus_morph_noMS1_df[c(1:20, 55:70),8]) #2.31048

arch_mean<-mean(strombus_morph_noMS1_df[c(21:43),8]) #2.488785
arch_median<-median(strombus_morph_noMS1_df[c(21:43),8]) #2.315661

paleo_mean<-mean(strombus_morph_noMS1_df[c(44:54),8]) #2.640262
paleo_median<-median(strombus_morph_noMS1_df[c(44:54),8]) #2.555921

mod_mean<-c("Modern", 2.43536)
arch_mean<-c("Archaeological", 2.488785)
paleo_mean<-c("Paleontological", 2.640262)

means<-rbind(mod_mean, arch_mean, paleo_mean)
means_df<-data.frame(means)
names(means_df) = c("Site_Age", "MW")

mod_median<-c("Modern", 2.31048)
arch_median<-c("Archaeological", 2.315661)
paleo_median<-c("Paleontological", 2.555921)

medians<-rbind(mod_median, arch_median, paleo_median)
medians_df<-data.frame(medians)
names(medians_df) = c("Site_Age", "MW")

library(ggplot2)
library(wesanderson)
new_pub = c("#D55E00", "#009E73", "#56B4E9")
ggplot(strombus_morph_noMS1_df, aes(x=Site_Age, y=as.numeric(MW), fill=Site_Age)) +
  geom_violin(na.rm = TRUE, trim = FALSE) +
  geom_boxplot(width=0.2, na.rm = TRUE, outlier.shape = NA) +
  scale_fill_manual(values=new_pub) +
  geom_point(data=means_df, shape = 0) +
  geom_point(data=medians_df, shape = 3) +
  geom_point(data=CayoAgua1_live_seq, shape = 24, fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=CayoAgua1_live_noSeq, shape = 24, fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=CayoAgua2_boil_seq, shape = 21, col = "black", fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=CayoAgua2_boil_noSeq, shape = 21, col = "black", fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=CayoAgua1_dock_noSeq, shape = 21, col = "black", fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=BocaDrago_live_seq, shape = 25, fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=BocaDrago_live_noSeq, shape = 25, fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U60_seq, shape = 21, col = "black", fill = "#D55E00", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U60_noSeq, shape = 21, col = "black", fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U61_seq, shape = 21, col = "black", fill = "#D55E00", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U61_noSeq, shape = 21, col = "black", fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=Lennond_seq, shape = 21, col = "black", fill = "#56B4E9", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=Lennond_noSeq, shape = 21, col = "black", fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank()) +
  xlab("Site") + ylab("Estimated Meat Weight (g)") + 
  ylim(0, 8) +
  ggtitle("Strombus pugilis Estimated Meat Weight") 


##O'Dea et al 2014 data adult
strombus_morph_ODea_df<-strombus_morph_df[81:679,] #no APS data
ODea2014Arch_noSeq<-strombus_morph_ODea_df[c(1:232),] #ODea2014Arch_noSeq has 42 NAs, 190 total
ODea2014Paleo_noSeq<-strombus_morph_ODea_df[c(233:329),] #ODea2014Paleo_noSeq has 33 NAs, 64 total
ODea2014ModCA_noSeq<-strombus_morph_ODea_df[c(330:473),] #144 total
ODea2014ModBD_noSeq<-strombus_morph_ODea_df[c(474:599),] #126 total (270 mods)

mod_mean<-mean(strombus_morph_ODea_df[c(330:599),8], na.rm = TRUE) #1.777765
mod_median<-median(strombus_morph_ODea_df[c(330:599),8], na.rm = TRUE) #1.687631

arch_mean<-mean(strombus_morph_ODea_df[c(1:232), 8], na.rm = TRUE) #2.484298
arch_median<-median(strombus_morph_ODea_df[c(1:232),8], na.rm = TRUE) #2.33295

paleo_mean<-mean(strombus_morph_ODea_df[c(233:329),8], na.rm = TRUE) #3.022692
paleo_median<-median(strombus_morph_ODea_df[c(233:329),8], na.rm = TRUE) #2.70699

mod_mean<-c("Modern", 1.777765)
arch_mean<-c("Archaeological", 2.484298)
paleo_mean<-c("Paleontological", 3.022692)

means<-rbind(mod_mean, arch_mean, paleo_mean)
means_df<-data.frame(means)
names(means_df) = c("Site_Age", "MW")

mod_median<-c("Modern", 1.687631)
arch_median<-c("Archaeological", 2.33295)
paleo_median<-c("Paleontological", 2.70699)

medians<-rbind(mod_median, arch_median, paleo_median)
medians_df<-data.frame(medians)
names(medians_df) = c("Site_Age", "MW")

library(ggplot2)
library(wesanderson)
new_pub = c("#D55E00", "#009E73", "#56B4E9")
ggplot(strombus_morph_ODea_df, aes(x=Site_Age, y=as.numeric(MW), fill=Site_Age)) +
  geom_violin(na.rm = TRUE, trim = FALSE) +
  geom_boxplot(width=0.2, na.rm = TRUE, outlier.shape = NA) +
  scale_fill_manual(values=new_pub) +
  geom_point(data=means_df, shape = 0) +
  geom_point(data=medians_df, shape = 3) +
  geom_point(data=ODea2014ModCA_noSeq, shape = 24, col = "gray", fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=ODea2014ModBD_noSeq, shape = 25, col = "gray", fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=ODea2014Arch_noSeq, shape = 21, col = "gray", fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=ODea2014Paleo_noSeq, shape = 21, col = "gray", fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank()) +
  xlab("Site") + ylab("Estimated Meat Weight (g)") + 
  ylim(0, 8) +
  ggtitle("Strombus pugilis Estimated Meat Weight (O'Dea et al 2014)") 


























strombus_morph_noMS1_noOutlier_df<-strombus_morph_noMS1_df[-39,] #no Mod Site 1 + no U60 Sitio Drago 40-50
CayoAgua1_live_seq_noOutlier<-strombus_morph_noMS1_noOutlier_df[c(3, 5, 6),]
CayoAgua1_live_noSeq_noOutlier<-strombus_morph_noMS1_noOutlier_df[c(1, 2, 4, 7, 8, 9, 10),]
BocaDrago_live_seq_noOutlier<-strombus_morph_noMS1_noOutlier_df[c(13, 20),]
BocaDrago_live_noSeq_noOutlier<-strombus_morph_noMS1_noOutlier_df[c(11, 12, 14:19),]
U61_seq_noOutlier<-strombus_morph_noMS1_noOutlier_df[c(24:25, 27),]
U61_noSeq_noOutlier<-strombus_morph_noMS1_noOutlier_df[c(21:23, 26, 28:34),]
U60_seq_noOutlier<-strombus_morph_noMS1_noOutlier_df[c(35, 43),]
U60_noSeq_noOutlier<-strombus_morph_noMS1_noOutlier_df[c(36:41),]
Lennond_seq_noOutlier<-strombus_morph_noMS1_noOutlier_df[c(43, 45, 47, 49, 53),]
Lennond_noSeq_noOutlier<-strombus_morph_noMS1_noOutlier_df[c(42, 44, 46, 48, 50:52),]
CayoAgua2_boil_seq_noOutlier<-strombus_morph_noMS1_noOutlier_df[54:56,]
CayoAgua2_boil_noSeq_noOutlier<-strombus_morph_noMS1_noOutlier_df[57:64,]
CayoAgua1_dock_noSeq_noOutlier<-strombus_morph_noMS1_noOutlier_df[65:69,]

library(ggplot2)
library(wesanderson)
new_pub = c("#D55E00", "#009E73", "#56B4E9")
ggplot(strombus_morph_noMS1_noOutlier_df, aes(x=Site_Age, y=as.numeric(MW), fill=Site_Age)) +
  geom_boxplot(na.rm = TRUE, outlier.shape = NA) +
  scale_fill_manual(values=new_pub) +
  geom_point(data=CayoAgua1_live_seq_noOutlier, shape = 24, fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=CayoAgua1_live_noSeq_noOutlier, shape = 24, fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=CayoAgua2_boil_seq_noOutlier, shape = 21, col = "black", fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=CayoAgua2_boil_noSeq_noOutlier, shape = 21, col = "black", fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=CayoAgua1_dock_noSeq_noOutlier, shape = 21, col = "black", fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=BocaDrago_live_seq_noOutlier, shape = 25, fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=BocaDrago_live_noSeq_noOutlier, shape = 25, fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U60_seq_noOutlier, shape = 21, col = "black", fill = "#D55E00", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U60_noSeq_noOutlier, shape = 21, col = "black", fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U61_seq_noOutlier, shape = 21, col = "black", fill = "#D55E00", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U61_noSeq_noOutlier, shape = 21, col = "black", fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=Lennond_seq_noOutlier, shape = 21, col = "black", fill = "#56B4E9", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=Lennond_noSeq_noOutlier, shape = 21, col = "black", fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank()) +
  xlab("Site") + ylab("Estimated Meat Weight (g)") + 
  ggtitle("Strombus pugilis Estimated Meat Weight - No U60-40-50 outlier") 

ggplot(strombus_morph_noMS1_noOutlier_df, aes(x=Site_Age, y=as.numeric(MW), fill=Site_Age)) +
  geom_violin(na.rm = TRUE, trim = FALSE) +
  geom_boxplot(width=0.1, na.rm = TRUE, outlier.shape = NA, fill = "white") +
  scale_fill_manual(values=new_pub) +
  geom_point(data=CayoAgua1_live_seq_noOutlier, shape = 24, fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=CayoAgua1_live_noSeq_noOutlier, shape = 24, fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=CayoAgua2_boil_seq_noOutlier, shape = 21, col = "black", fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=CayoAgua2_boil_noSeq_noOutlier, shape = 21, col = "black", fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=CayoAgua1_dock_noSeq_noOutlier, shape = 21, col = "black", fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=BocaDrago_live_seq_noOutlier, shape = 25, fill = "#009E73", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=BocaDrago_live_noSeq_noOutlier, shape = 25, fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U60_seq_noOutlier, shape = 21, col = "black", fill = "#D55E00", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U60_noSeq_noOutlier, shape = 21, col = "black", fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U61_seq_noOutlier, shape = 21, col = "black", fill = "#D55E00", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U61_noSeq_noOutlier, shape = 21, col = "black", fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=Lennond_seq_noOutlier, shape = 21, col = "black", fill = "#56B4E9", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=Lennond_noSeq_noOutlier, shape = 21, col = "black", fill = "#636363", position = position_jitter(w = 0.1, h = 0)) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank()) +
  xlab("Site") + ylab("Estimated Meat Weight (g)") + 
  ggtitle("Strombus pugilis Estimated Meat Weight - No U60-40-50 outlier") 





Zissou1 = c("#3B9AB2", "#78B7C5", "#EBCC2A", "#E1AF00", "#F21A00")
Zissou = c("#E09425", "#FFC85E", "#955805")

#library(ggplot2)
#ggplot(strombus_morph_noMS1_df, aes(x=Site, y=as.numeric(SH), fill=Site_Age)) +
  #theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank()) +
  #geom_boxplot(na.rm = TRUE) + xlab("Site") + ylab("Shell Height (mm)") +
  #ggtitle("Strombus pugilis Shell Height") + geom_jitter(width = 0.1, na.rm = TRUE)

#library(ggplot2)
#ggplot(strombus_morph_noMS1_df, aes(x=Site, y=as.numeric(SW), fill=Site_Age)) +
  #theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank()) +
  #geom_boxplot(na.rm = TRUE) + xlab("Site") + ylab("Shell Width (mm)") +
  #ggtitle("Strombus pugilis Shell Width") + geom_jitter(width = 0.1, na.rm = TRUE)

#library(ggplot2)
#ggplot(strombus_morph_noMS1_df, aes(x=Site, y=as.numeric(LT), fill=Site_Age)) +
  #theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank()) +
  #geom_boxplot(na.rm = TRUE) + xlab("Site") + ylab("Shell Lip Thickness (mm)") +
  #ggtitle("Strombus pugilis Shell Lip Thickness") + geom_jitter(width = 0.1, na.rm = TRUE)

library(ggplot2)
library(wesanderson)
ggplot(strombus_morph_noMS1_noOutlier_df, aes(x=Site_Age, y=as.numeric(MW), fill=Site_Age)) +
  geom_boxplot(na.rm = TRUE, outlier.shape = NA) +
  #geom_jitter(width = 0.1, na.rm = TRUE) +
  scale_fill_manual(values=Zissou) +
  geom_point(data=CayoAgua, shape = 24, fill = "black", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U60, col = "black", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=BocaDrago, shape = 25, fill = "black", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=U61, col = "black", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=tissue_seq_samples, col = "#F21A00", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=shell_seq_samples, col = "#F21A00", position = position_jitter(w = 0.1, h = 0)) +
  geom_point(data=Lennond, col = "black", position = position_jitter(w = 0.1, h = 0)) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank()) +
  xlab("Site") + ylab("Estimated Meat Weight (g)") + 
  ggtitle("Strombus pugilis Estimated Meat Weight") 

#library(ggplot2)
#library(wesanderson)
#new_pub = c("#D55E00", "#009E73", "#56B4E9")
#library(ggplot2)
#library(wesanderson)
#ggplot(seq_samples, aes(x=Site_Age, y=as.numeric(MW), fill=Site_Age)) +
#  geom_boxplot(na.rm = TRUE, outlier.shape = NA) +
#  #geom_jitter(width = 0.1, na.rm = TRUE) +
#  scale_fill_manual(values=new_pub) +
#  geom_point(data=CayoAgua_seq, shape = 24, fill = "black", position = position_jitter(w = 0.1, h = 0)) +
#  geom_point(data=U60_seq, col = "black", position = position_jitter(w = 0.1, h = 0)) +
#  geom_point(data=BocaDrago_seq, shape = 25, fill = "black", position = position_jitter(w = 0.1, h = 0)) +
#  geom_point(data=U61_seq, col = "black", position = position_jitter(w = 0.1, h = 0)) +
#  geom_point(data=Lennond_seq, col = "black", position = position_jitter(w = 0.1, h = 0)) +
#  geom_point(data=CABoil_seq, col = "black", position = position_jitter(w = 0.1, h = 0)) +
#  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank()) +
#  xlab("Site") + ylab("Estimated Meat Weight (g)") + 
#  ggtitle("Strombus pugilis Estimated Meat Weight (Seq Only)") 






