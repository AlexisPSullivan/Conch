---
title: "Conch Markdown"
author: "APS"
date: "8/20/2020"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## COMBINE RAW SEQUENCING READS FROM MULTIPLE LANES

## For reference assembly
```
cd /gpfs/group/ghp3/default/rawReadData/2018-01-16_CB-APS/genome.med.nyu.edu/results/external/PennState/2017-12-22/fastq/

cp Cayo_Agua_2-3_S1_L00* /storage/home/aps216/scratch/Conch/data/RefAssembly

cat Cayo_Agua_2-3_S1_L001_R1_001.fastq.gz Cayo_Agua_2-3_S1_L002_R1_001.fastq.gz Cayo_Agua_2-3_S1_L003_R1_001.fastq.gz Cayo_Agua_2-3_S1_L004_R1_001.fastq.gz > Cayo_Agua_2-3_S1_R1.fastq.gz

cat Cayo_Agua_2-3_S1_L001_R2_001.fastq.gz Cayo_Agua_2-3_S1_L002_R2_001.fastq.gz Cayo_Agua_2-3_S1_L003_R2_001.fastq.gz Cayo_Agua_2-3_S1_L004_R2_001.fastq.gz > Cayo_Agua_2-3_S1_R2.fastq.gz
```


## For raw tissue reads
```
cd /gpfs/group/ghp3/default/rawReadData/2018-01-16_CB-APS/genome.med.nyu.edu/results/external/PennState/2017-12-22/fastq/

cp Cayo* /storage/home/aps216/scratch/Conch/data/tissue/raw

cp Boca* /storage/home/aps216/scratch/Conch/data/tissue/raw

cat Boca_Drago_3-10_S5_L001_R1_001.fastq.gz Boca_Drago_3-10_S5_L002_R1_001.fastq.gz Boca_Drago_3-10_S5_L003_R1_001.fastq.gz Boca_Drago_3-10_S5_L004_R1_001.fastq.gz > Boca_Drago_3-10_S5_R1.fastq.gz

cat Boca_Drago_3-10_S5_L001_R2_001.fastq.gz Boca_Drago_3-10_S5_L002_R2_001.fastq.gz Boca_Drago_3-10_S5_L003_R2_001.fastq.gz Boca_Drago_3-10_S5_L004_R2_001.fastq.gz > Boca_Drago_3-10_S5_R2.fastq.gz


cat Boca_Drago_3-3_S4_L001_R1_001.fastq.gz Boca_Drago_3-3_S4_L002_R1_001.fastq.gz Boca_Drago_3-3_S4_L003_R1_001.fastq.gz Boca_Drago_3-3_S4_L004_R1_001.fastq.gz > Boca_Drago_3-3_S4_R1.fastq.gz

cat Boca_Drago_3-3_S4_L001_R2_001.fastq.gz Boca_Drago_3-3_S4_L002_R2_001.fastq.gz Boca_Drago_3-3_S4_L003_R2_001.fastq.gz Boca_Drago_3-3_S4_L004_R2_001.fastq.gz > Boca_Drago_3-3_S4_R2.fastq.gz


cat Cayo_Agua_2-3_S1_L001_R1_001.fastq.gz Cayo_Agua_2-3_S1_L002_R1_001.fastq.gz Cayo_Agua_2-3_S1_L003_R1_001.fastq.gz Cayo_Agua_2-3_S1_L004_R1_001.fastq.gz > Cayo_Agua_2-3_S1_R1.fastq.gz

cat Cayo_Agua_2-3_S1_L001_R2_001.fastq.gz Cayo_Agua_2-3_S1_L002_R2_001.fastq.gz Cayo_Agua_2-3_S1_L003_R2_001.fastq.gz Cayo_Agua_2-3_S1_L004_R2_001.fastq.gz > Cayo_Agua_2-3_S1_R2.fastq.gz


cat Cayo_Agua_2-5_S2_L001_R1_001.fastq.gz Cayo_Agua_2-5_S2_L002_R1_001.fastq.gz Cayo_Agua_2-5_S2_L003_R1_001.fastq.gz Cayo_Agua_2-5_S2_L004_R1_001.fastq.gz > Cayo_Agua_2-5_S2_R1.fastq.gz

cat Cayo_Agua_2-5_S2_L001_R2_001.fastq.gz Cayo_Agua_2-5_S2_L002_R2_001.fastq.gz Cayo_Agua_2-5_S2_L003_R2_001.fastq.gz Cayo_Agua_2-5_S2_L004_R2_001.fastq.gz > Cayo_Agua_2-5_S2_R2.fastq.gz


cat Cayo_Agua_2-6_S3_L001_R1_001.fastq.gz Cayo_Agua_2-6_S3_L002_R1_001.fastq.gz Cayo_Agua_2-6_S3_L003_R1_001.fastq.gz Cayo_Agua_2-6_S3_L004_R1_001.fastq.gz > Cayo_Agua_2-6_S3_R1.fastq.gz

cat Cayo_Agua_2-6_S3_L001_R2_001.fastq.gz Cayo_Agua_2-6_S3_L002_R2_001.fastq.gz Cayo_Agua_2-6_S3_L003_R2_001.fastq.gz Cayo_Agua_2-6_S3_L004_R2_001.fastq.gz > Cayo_Agua_2-6_S3_R2.fastq.gz
```



## For raw shell reads
```
cd /gpfs/group/ghp3/default/rawReadData/2018-01-16_CB-APS/genome.med.nyu.edu/results/external/PennState/2017-12-22/fastq/

cp BocaDrago3-* /storage/home/aps216/scratch/Conch/data/shells/mod/raw

...

cat BocaDrago3-10_S19_L001_R1_001.fastq.gz BocaDrago3-10_S19_L002_R1_001.fastq.gz BocaDrago3-10_S19_L003_R1_001.fastq.gz BocaDrago3-10_S19_L004_R1_001.fastq.gz > BocaDrago3-10_S19_R1.fastq.gz

cat BocaDrago3-10_S19_L001_R2_001.fastq.gz BocaDrago3-10_S19_L002_R2_001.fastq.gz BocaDrago3-10_S19_L003_R2_001.fastq.gz BocaDrago3-10_S19_L004_R2_001.fastq.gz > BocaDrago3-10_S19_R2.fastq.gz


cat BocaDrago3-3_S18_L001_R1_001.fastq.gz BocaDrago3-3_S18_L002_R1_001.fastq.gz BocaDrago3-3_S18_L003_R1_001.fastq.gz BocaDrago3-3_S18_L004_R1_001.fastq.gz > BocaDrago3-3_S18_R1.fastq.gz

cat BocaDrago3-3_S18_L001_R2_001.fastq.gz BocaDrago3-3_S18_L002_R2_001.fastq.gz BocaDrago3-3_S18_L003_R2_001.fastq.gz BocaDrago3-3_S18_L004_R2_001.fastq.gz > BocaDrago3-3_S18_R2.fastq.gz


cat CayoAgua2-3_S15_L001_R1_001.fastq.gz CayoAgua2-3_S15_L002_R1_001.fastq.gz CayoAgua2-3_S15_L003_R1_001.fastq.gz CayoAgua2-3_S15_L004_R1_001.fastq.gz > CayoAgua2-3_S15_R1.fastq.gz

cat CayoAgua2-3_S15_L001_R2_001.fastq.gz CayoAgua2-3_S15_L002_R2_001.fastq.gz CayoAgua2-3_S15_L003_R2_001.fastq.gz CayoAgua2-3_S15_L004_R2_001.fastq.gz > CayoAgua2-3_S15_R2.fastq.gz


cat CayoAgua2-5_S16_L001_R1_001.fastq.gz CayoAgua2-5_S16_L002_R1_001.fastq.gz CayoAgua2-5_S16_L003_R1_001.fastq.gz CayoAgua2-5_S16_L004_R1_001.fastq.gz > CayoAgua2-5_S16_R1.fastq.gz

cat CayoAgua2-5_S16_L001_R2_001.fastq.gz CayoAgua2-5_S16_L002_R2_001.fastq.gz CayoAgua2-5_S16_L003_R2_001.fastq.gz CayoAgua2-5_S16_L004_R2_001.fastq.gz > CayoAgua2-5_S16_R2.fastq.gz


cat CayoAgua2-6_S17_L001_R1_001.fastq.gz CayoAgua2-6_S17_L002_R1_001.fastq.gz CayoAgua2-6_S17_L003_R1_001.fastq.gz CayoAgua2-6_S17_L004_R1_001.fastq.gz > CayoAgua2-6_S17_R1.fastq.gz

cat CayoAgua2-6_S17_L001_R2_001.fastq.gz CayoAgua2-6_S17_L002_R2_001.fastq.gz CayoAgua2-6_S17_L003_R2_001.fastq.gz CayoAgua2-6_S17_L004_R2_001.fastq.gz > CayoAgua2-6_S17_R2.fastq.gz


cat CayoAguaBoil1_S20_L001_R1_001.fastq.gz CayoAguaBoil1_S20_L002_R1_001.fastq.gz CayoAguaBoil1_S20_L003_R1_001.fastq.gz CayoAguaBoil1_S20_L004_R1_001.fastq.gz > CayoAguaBoil1_S20_R1.fastq.gz

cat CayoAguaBoil1_S20_L001_R2_001.fastq.gz CayoAguaBoil1_S20_L002_R2_001.fastq.gz CayoAguaBoil1_S20_L003_R2_001.fastq.gz CayoAguaBoil1_S20_L004_R2_001.fastq.gz > CayoAguaBoil1_S20_R2.fastq.gz


cat CayoAguaBoil2_S21_L001_R1_001.fastq.gz CayoAguaBoil2_S21_L002_R1_001.fastq.gz CayoAguaBoil2_S21_L003_R1_001.fastq.gz CayoAguaBoil2_S21_L004_R1_001.fastq.gz > CayoAguaBoil2_S21_R1.fastq.gz

cat CayoAguaBoil2_S21_L001_R2_001.fastq.gz CayoAguaBoil2_S21_L002_R2_001.fastq.gz CayoAguaBoil2_S21_L003_R2_001.fastq.gz CayoAguaBoil2_S21_L004_R2_001.fastq.gz > CayoAguaBoil2_S21_R2.fastq.gz


cat CayoAguaBoil3_S22_L001_R1_001.fastq.gz CayoAguaBoil3_S22_L002_R1_001.fastq.gz CayoAguaBoil3_S22_L003_R1_001.fastq.gz CayoAguaBoil3_S22_L004_R1_001.fastq.gz > CayoAguaBoil3_S22_R1.fastq.gz

cat CayoAguaBoil3_S22_L001_R2_001.fastq.gz CayoAguaBoil3_S22_L002_R2_001.fastq.gz CayoAguaBoil3_S22_L003_R2_001.fastq.gz CayoAguaBoil3_S22_L004_R2_001.fastq.gz > CayoAguaBoil3_S22_R2.fastq.gz



cp qH2O-* /storage/home/aps216/scratch/Conch/data/shells/anc/raw

...

cat qH2O-Lib-Blank_S23_L001_R1_001.fastq.gz qH2O-Lib-Blank_S23_L002_R1_001.fastq.gz qH2O-Lib-Blank_S23_L003_R1_001.fastq.gz qH2O-Lib-Blank_S23_L004_R1_001.fastq.gz > qH2O-Lib-Blank_S23_R1.fastq.gz

cat qH2O-Lib-Blank_S23_L001_R2_001.fastq.gz qH2O-Lib-Blank_S23_L002_R2_001.fastq.gz qH2O-Lib-Blank_S23_L003_R2_001.fastq.gz qH2O-Lib-Blank_S23_L004_R2_001.fastq.gz > qH2O-Lib-Blank_S23_R2.fastq.gz


cat MS-F-10-110_S32_L001_R1_001.fastq.gz MS-F-10-110_S32_L002_R1_001.fastq.gz MS-F-10-110_S32_L003_R1_001.fastq.gz MS-F-10-110_S32_L004_R1_001.fastq.gz > MS-F-10-110_S32_R1.fastq.gz

cat MS-F-10-110_S32_L001_R2_001.fastq.gz MS-F-10-110_S32_L002_R2_001.fastq.gz MS-F-10-110_S32_L003_R2_001.fastq.gz MS-F-10-110_S32_L004_R2_001.fastq.gz > MS-F-10-110_S32_R2.fastq.gz


cat MS-F-15-4_S33_L001_R1_001.fastq.gz MS-F-15-4_S33_L002_R1_001.fastq.gz MS-F-15-4_S33_L003_R1_001.fastq.gz MS-F-15-4_S33_L004_R1_001.fastq.gz > MS-F-15-4_S33_R1.fastq.gz

cat MS-F-15-4_S33_L001_R2_001.fastq.gz MS-F-15-4_S33_L002_R2_001.fastq.gz MS-F-15-4_S33_L003_R2_001.fastq.gz MS-F-15-4_S33_L004_R2_001.fastq.gz > MS-F-15-4_S33_R2.fastq.gz


cat MS-F-2-78_S29_L001_R1_001.fastq.gz MS-F-2-78_S29_L002_R1_001.fastq.gz MS-F-2-78_S29_L003_R1_001.fastq.gz MS-F-2-78_S29_L004_R1_001.fastq.gz > MS-F-2-78_S29_R1.fastq.gz

cat MS-F-2-78_S29_L001_R2_001.fastq.gz MS-F-2-78_S29_L002_R2_001.fastq.gz MS-F-2-78_S29_L003_R2_001.fastq.gz MS-F-2-78_S29_L004_R2_001.fastq.gz > MS-F-2-78_S29_R2.fastq.gz


cat MS-F-5-257_S30_L001_R1_001.fastq.gz MS-F-5-257_S30_L002_R1_001.fastq.gz MS-F-5-257_S30_L003_R1_001.fastq.gz MS-F-5-257_S30_L004_R1_001.fastq.gz > MS-F-5-257_S30_R1.fastq.gz

cat MS-F-5-257_S30_L001_R2_001.fastq.gz MS-F-5-257_S30_L002_R2_001.fastq.gz MS-F-5-257_S30_L003_R2_001.fastq.gz MS-F-5-257_S30_L004_R2_001.fastq.gz > MS-F-5-257_S30_R2.fastq.gz


cat MS-F-7-128_S31_L001_R1_001.fastq.gz MS-F-7-128_S31_L002_R1_001.fastq.gz MS-F-7-128_S31_L003_R1_001.fastq.gz MS-F-7-128_S31_L004_R1_001.fastq.gz > MS-F-7-128_S31_R1.fastq.gz

cat MS-F-7-128_S31_L001_R2_001.fastq.gz MS-F-7-128_S31_L002_R2_001.fastq.gz MS-F-7-128_S31_L003_R2_001.fastq.gz MS-F-7-128_S31_L004_R2_001.fastq.gz > MS-F-7-128_S31_R2.fastq.gz


cat U60-10_20_S24_L001_R1_001.fastq.gz U60-10_20_S24_L002_R1_001.fastq.gz U60-10_20_S24_L003_R1_001.fastq.gz U60-10_20_S24_L004_R1_001.fastq.gz > U60-10_20_S24_R1.fastq.gz

cat U60-10_20_S24_L001_R2_001.fastq.gz U60-10_20_S24_L002_R2_001.fastq.gz U60-10_20_S24_L003_R2_001.fastq.gz U60-10_20_S24_L004_R2_001.fastq.gz > U60-10_20_S24_R2.fastq.gz


cat U60-110_120-5659_S25_L001_R1_001.fastq.gz U60-110_120-5659_S25_L002_R1_001.fastq.gz U60-110_120-5659_S25_L003_R1_001.fastq.gz U60-110_120-5659_S25_L004_R1_001.fastq.gz > U60-110_120-5659_S25_R1.fastq.gz

cat U60-110_120-5659_S25_L001_R2_001.fastq.gz U60-110_120-5659_S25_L002_R2_001.fastq.gz U60-110_120-5659_S25_L003_R2_001.fastq.gz U60-110_120-5659_S25_L004_R2_001.fastq.gz > U60-110_120-5659_S25_R2.fastq.gz


cat U61-20-30_S26_L001_R1_001.fastq.gz U61-20-30_S26_L002_R1_001.fastq.gz U61-20-30_S26_L003_R1_001.fastq.gz U61-20-30_S26_L004_R1_001.fastq.gz > U61-20-30_S26_R1.fastq.gz

cat U61-20-30_S26_L001_R2_001.fastq.gz U61-20-30_S26_L002_R2_001.fastq.gz U61-20-30_S26_L003_R2_001.fastq.gz U61-20-30_S26_L004_R2_001.fastq.gz > U61-20-30_S26_R2.fastq.gz


cat U61-50_60-5454_S27_L001_R1_001.fastq.gz U61-50_60-5454_S27_L002_R1_001.fastq.gz U61-50_60-5454_S27_L003_R1_001.fastq.gz U61-50_60-5454_S27_L004_R1_001.fastq.gz > U61-50_60-5454_S27_R1.fastq.gz

cat U61-50_60-5454_S27_L001_R2_001.fastq.gz U61-50_60-5454_S27_L002_R2_001.fastq.gz U61-50_60-5454_S27_L003_R2_001.fastq.gz U61-50_60-5454_S27_L004_R2_001.fastq.gz > U61-50_60-5454_S27_R2.fastq.gz


cat U61-80_90-5596C_S28_L001_R1_001.fastq.gz U61-80_90-5596C_S28_L002_R1_001.fastq.gz U61-80_90-5596C_S28_L003_R1_001.fastq.gz U61-80_90-5596C_S28_L004_R1_001.fastq.gz > U61-80_90-5596C_S28_R1.fastq.gz 

cat U61-80_90-5596C_S28_L001_R2_001.fastq.gz U61-80_90-5596C_S28_L002_R2_001.fastq.gz U61-80_90-5596C_S28_L003_R2_001.fastq.gz U61-80_90-5596C_S28_L004_R2_001.fastq.gz > U61-80_90-5596C_S28_R2.fastq.gz
```


## FASTQC COMBINED READS

## Example with reference assembly reads
```
#/storage/home/aps216/scratch/Conch/data/RefAssembly
module load fastqc; fastqc Cayo_Agua_2-3_S1_R1.fastq.gz
module load fastqc; fastqc Cayo_Agua_2-3_S1_R2.fastq.gz
```

## Relevant pbs files
pbs/fastqc_raw_reads.pbs


## TRIM READS FOR REFERENCE ASSEMBLY

## Relevant pbs files
pbs/trim_ref_reads.pbs

## FastQC trimmed reads
```
module load fastqc; fastqc Cayo_Agua_2-3_S1_TRIM_R1.fastq
module load fastqc; fastqc Cayo_Agua_2-3_S1_TRIM_R2.fastq
```


## REMOVE PCR DUPLICATES IN REFERENCE ASSEMBLY READS

## Relevant pbs files
pbs/remove_ref_pcr_dups.pbs

## FastQC trimmed/rmdup reads
```
module load fastqc; fastqc Cayo_Agua_2-3_S1_TRIM_R1.rmdup.fastq
module load fastqc; fastqc Cayo_Agua_2-3_S1_TRIM_R2.rmdup.fastq
```


## GENERATE KRAKEN2 OUTPUTS FOR REFERENCE ASSEMBLY READS

## Relevant pbs files
pbs/kraken_ref_reads.pbs

## Fix naming convention
```
cat Cayo_Agua_2-3_TRIM_1_classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out.fastq
cat Cayo_Agua_2-3_TRIM_1_unclassified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R1.rmdup.unclassified-out.fastq
cat Cayo_Agua_2-3_TRIM_2_classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out.fastq
cat Cayo_Agua_2-3_TRIM_2_unclassified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R2.rmdup.unclassified-out.fastq
```

## Generate report of Kraken composition
```
grep "^@" Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out.fastq | sed -e "s/.*taxid//g" | sort | uniq -c > Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out.report.txt

grep "^@" Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out.fastq | sed -e "s/.*taxid//g" | sort | uniq -c > Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out.report.txt
```

## Sort report files most -> least - below are >=1000 read categories
```
20296309 |9606			Homo sapiens			
 3298911 |28384			other sequences
   52390 |1				Viruses
   40504 |1200984		Streptomyces lividans
   33309 |131567		cellular organisms
   15794 |2				Bacteria
    5352 |1464			uncharacterized protein
    4127 |2184519		Hydrogenophaga sp. NH-16
    3743 |2306583		Halomonas sp. JS92-SW72
    3633 |261654		Micromonospora auratinigra
    3575 |1367491		Campylobacter coli
    2717 |1224			Proteobacteria
    2096 |266749		Chryseobacterium jeonii
    1836 |286			Pseudomonas
    1473 |526973		Bacillus cereus m1293
    1332 |152268		Bacillus litoralis 
    1234 |1883			Streptomyces
    1230 |1386			Bacillus
    1174 |1491			Clostridium botulinum
    1077 |1406			Paenibacillus polymyxa 
    1013 |1197717		Cloacibacillus porcorum
```

## Pull out classsified reads by code (check wc -l)
**##Homo sapiens**
```
grep "taxid|9606" Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_9606
grep "taxid|9606" Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_9606

grep -A 3 --no-group-separator "taxid|9606" Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_9606.fastq
grep -A 3 --no-group-separator "taxid|9606" Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_9606.fastq

#grep -v -- "^--$" Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_9606.fastq > Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_9606-clean.fastq
```

**##other sequences**
```
grep "taxid|28384" Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_28384
grep "taxid|28384" Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_28384

grep -A 3 --no-group-separator "taxid|28384" Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_28384.fastq
grep -A 3 --no-group-separator "taxid|28384" Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_28384.fastq
```

**##Viruses**
```
grep "taxid|1" Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_1
grep "taxid|1" Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_1

grep -A 3 --no-group-separator "taxid|1" Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_1.fastq
grep -A 3 --no-group-separator "taxid|1" Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_1.fastq
```

**##cellular organisms**
```
grep "taxid|131567" Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_131567
grep "taxid|131567" Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_131567

grep -A 3 --no-group-separator "taxid|131567" Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_131567.fastq
grep -A 3 --no-group-separator "taxid|131567" Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_131567.fastq
```

**##Bacteria**
```
grep "taxid|2" Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_2
grep "taxid|2" Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_2

grep -A 3 --no-group-separator "taxid|2" Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_2.fastq
grep -A 3 --no-group-separator "taxid|2" Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out.fastq > Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_2.fastq
```


## Combine for new reference files
**##kraken1**
```
cat Cayo_Agua_2-3_S1_TRIM_R1.rmdup.unclassified-out.fastq Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_28384.fastq Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_1.fastq Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_131567.fastq Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_2.fastq > Cayo_Agua_2-3_S1_kraken1_TRIM_R1.rmdup.fastq

cat Cayo_Agua_2-3_S1_TRIM_R2.rmdup.unclassified-out.fastq Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_28384.fastq Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_1.fastq Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_131567.fastq Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_2.fastq > Cayo_Agua_2-3_S1_kraken1_TRIM_R2.rmdup.fastq

mv *kraken1* /storage/home/aps216/scratch/Conch/data/RefAssembly/ref1/

cd /storage/home/aps216/scratch/Conch/data/RefAssembly/ref1/

awk 'NR%4 == 2 {lengths[length($0)]++} END {for (l in lengths) {print l, lengths[l]}}' \
    Cayo_Agua_2-3_S1_kraken1_TRIM_R1.rmdup.fastq > Cayo_Agua_2-3_S1_kraken1_TRIM_R1.rmdup.length

awk 'NR%4 == 2 {lengths[length($0)]++} END {for (l in lengths) {print l, lengths[l]}}' \
    Cayo_Agua_2-3_S1_kraken1_TRIM_R2.rmdup.fastq > Cayo_Agua_2-3_S1_kraken1_TRIM_R2.rmdup.length

#sed 's/\( kraken:taxid|28384\| kraken:taxid|1\| kraken:taxid|131567\| kraken:taxid|2\)//g' Cayo_Agua_2-3_S1_kraken1_TRIM_R1.rmdup.fastq > Cayo_Agua_2-3_S1_kraken1-clean_TRIM_R1.rmdup.fastq
```

**##kraken2**
```
cat Cayo_Agua_2-3_S1_TRIM_R1.rmdup.unclassified-out.fastq Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_28384.fastq Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_1.fastq Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_131567.fastq > Cayo_Agua_2-3_S1_kraken2_TRIM_R1.rmdup.fastq

cat Cayo_Agua_2-3_S1_TRIM_R2.rmdup.unclassified-out.fastq Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_28384.fastq Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_1.fastq Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_131567.fastq > Cayo_Agua_2-3_S1_kraken2_TRIM_R2.rmdup.fastq

mv *kraken2* /storage/home/aps216/scratch/Conch/data/RefAssembly/ref2/

cd /storage/home/aps216/scratch/Conch/data/RefAssembly/ref2/

awk 'NR%4 == 2 {lengths[length($0)]++} END {for (l in lengths) {print l, lengths[l]}}' \
    Cayo_Agua_2-3_S1_kraken2_TRIM_R1.rmdup.fastq > Cayo_Agua_2-3_S1_kraken2_TRIM_R1.rmdup.length

awk 'NR%4 == 2 {lengths[length($0)]++} END {for (l in lengths) {print l, lengths[l]}}' \
    Cayo_Agua_2-3_S1_kraken2_TRIM_R2.rmdup.fastq > Cayo_Agua_2-3_S1_kraken2_TRIM_R2.rmdup.length
```

**kraken3**
```
cat Cayo_Agua_2-3_S1_TRIM_R1.rmdup.unclassified-out.fastq Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_28384.fastq Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_2.fastq Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_131567.fastq > Cayo_Agua_2-3_S1_kraken3_TRIM_R1.rmdup.fastq

cat Cayo_Agua_2-3_S1_TRIM_R2.rmdup.unclassified-out.fastq Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_28384.fastq Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_2.fastq Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_131567.fastq > Cayo_Agua_2-3_S1_kraken3_TRIM_R2.rmdup.fastq

mv *kraken3* /storage/home/aps216/scratch/Conch/data/RefAssembly/ref3/

cd /storage/home/aps216/scratch/Conch/data/RefAssembly/ref3/

awk 'NR%4 == 2 {lengths[length($0)]++} END {for (l in lengths) {print l, lengths[l]}}' \
    Cayo_Agua_2-3_S1_kraken3_TRIM_R1.rmdup.fastq > Cayo_Agua_2-3_S1_kraken3_TRIM_R1.rmdup.length

awk 'NR%4 == 2 {lengths[length($0)]++} END {for (l in lengths) {print l, lengths[l]}}' \
    Cayo_Agua_2-3_S1_kraken3_TRIM_R2.rmdup.fastq > Cayo_Agua_2-3_S1_kraken3_TRIM_R2.rmdup.length
```

**kraken4**
```
cat Cayo_Agua_2-3_S1_TRIM_R1.rmdup.unclassified-out.fastq Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_28384.fastq  Cayo_Agua_2-3_S1_TRIM_R1.rmdup.classified-out_131567.fastq > Cayo_Agua_2-3_S1_kraken4_TRIM_R1.rmdup.fastq

cat Cayo_Agua_2-3_S1_TRIM_R2.rmdup.unclassified-out.fastq Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_28384.fastq  Cayo_Agua_2-3_S1_TRIM_R2.rmdup.classified-out_131567.fastq > Cayo_Agua_2-3_S1_kraken4_TRIM_R2.rmdup.fastq

mv *kraken4* /storage/home/aps216/scratch/Conch/data/RefAssembly/ref4/

cd /storage/home/aps216/scratch/Conch/data/RefAssembly/ref4/

awk 'NR%4 == 2 {lengths[length($0)]++} END {for (l in lengths) {print l, lengths[l]}}' \
    Cayo_Agua_2-3_S1_kraken4_TRIM_R1.rmdup.fastq > Cayo_Agua_2-3_S1_kraken4_TRIM_R1.rmdup.length

awk 'NR%4 == 2 {lengths[length($0)]++} END {for (l in lengths) {print l, lengths[l]}}' \
    Cayo_Agua_2-3_S1_kraken4_TRIM_R2.rmdup.fastq > Cayo_Agua_2-3_S1_kraken4_TRIM_R2.rmdup.length
```


## MITOCHONDRIAL GENOME REFERENCE ASSEMBLY

## Relevant pbs files
pbs/assemble_mito4.pbs
pbs/assemble_mito4_wNuc.pbs

## Install norgal
#/storage/home/aps216/work/norgal/norgal.py

```
#python norgal.py -i f.fq r.fq -o norgal_output --blast 

chmod -R a+x /storage/home/aps216/work/norgal/

mv /storage/work/a/aps216/norgal/binaries/linux/bedtools /storage/work/a/aps216/norgal/binaries/linux/bedtools_BACKUP
module load bedtools
ln -s `which bedtools` /storage/work/a/aps216/norgal/binaries/linux/bedtools

module load python/3.6.3-anaconda5.0.1
python
from matlibplot.figure import Figure
quit()
```


## NUCLEAR GENOME REFERENCE ASSEMBLY

## Relevant pbs files
pbs/assemble_genomes_ref0.pbs
pbs/assemble_genomes_ref1.pbs
pbs/assemble_genomes_ref2.pbs
pbs/assemble_genomes_ref3.pbs
pbs/assemble_genomes_ref4.pbs


## NUCLEAR GENOME REFERENCE ASSEMBLY ASSESSMENT

## Relevant pbs files
pbs/assess_assembly_quality_ref0.pbs
pbs/assess_assembly_quality_ref1.pbs
pbs/assess_assembly_quality_ref2.pbs
pbs/assess_assembly_quality_ref3.pbs
pbs/assess_assembly_quality_ref4.pbs

## Remove contigs <500bp
```
module load bedtools
awk -v OFS='\t' '{ if ($2 >= 500) print $1,	1, $2	}' Cayo_Agua_2-3_S1_kraken4.scafSeq.fa.fai > Cayo_Agua_2-3_S1_kraken4.scafSeq.to_include.bed
fastaFromBed -fi Cayo_Agua_2-3_S1_kraken4.scafSeq.fa -bed Cayo_Agua_2-3_S1_kraken4.scafSeq.to_include.bed -fo Cayo_Agua_2-3_S1_kraken4.scafSeq-gt500.fa
```

## Redo quast on Cayo_Agua_2-3_S1_kraken4.scafSeq-gt500.fa as a check
pbs/assess_assembly_quality_ref4_test.pbs


## INDEX MITOCHONDRIAL REFERENCE ASSEMBLY

## Relevant pbs files
pbs/index_mito.pbs


## INDEX NUCLEAR REFERENCE ASSEMBLY

## Relevant pbs files
pbs/index_refs.pbs
pbs/index_ref4.pbs


## ESTIMATE RAW READ COVERAGE

## Relevant pbs files
pbs/raw_read_count.pbs


## TRIM RAW READS FOR MAPPING

## Relevant pbs files
pbs/shells-anc_trim.pbs
pbs/shells-mod_trim.pbs
pbs/tissue-mod_trim.pbs

###move r1/r2.fq.gz to trimmed/pe
###move fq.gz to trimmed/se
###move fail to trimmed/fail_trims


## ANCIENT SHELLS / MITODNA - TRIM, MAP, FILTER

## Relevant pbs files
pbs/shells-anc_se-mito_noNuc.pbs
pbs/shells-anc_se-mito_wNuc.pbs


## MODERN SHELLS / MITODNA - TRIM, MAP, FILTER

## Relevant pbs files
pbs/shells-mod_se-mito_noNuc.pbs
pbs/shells-mod_se-mito_wNuc.pbs


## MODERN TISSUE / MITODNA - TRIM, MAP, FILTER

## Relevant pbs files
pbs/tissue_pe-mito_noNuc.pbs
pbs/tissue_pe-mito_wNuc.pbs
pbs/tissue_se-mito_wNuc.pbs


## ANCIENT SHELLS / NUDNA - TRIM, MAP, FILTER

## Relevant pbs files
pbs/shells-anc_se-nu.pbs


## MODERN SHELLS / NUDNA - TRIM, MAP, FILTER

## Relevant pbs files
pbs/shells-mod_se-nu.pbs


## MODERN TISSUE / NUDNA - TRIM, MAP, FILTER

## Relevant pbs files
pbs/tissue_pe-nu.pbs


## MAPDAMAGE FOR SHELLS

## Relevant pbs files
pbs/shells_anc_se-nu_mapdam.pbs
pbs/shells_mod_se-nu_mapdam.pbs


```
module load samtools; samtools merge paleo_shells_aln-mito-wNuc_se.sorted.rmdup.30x30.bam MS-F-10-110_S32_aln-mito-wNuc_se.sorted.rmdup.30x30.bam MS-F-15-4_S33_aln-mito-wNuc_se.sorted.rmdup.30x30.bam MS-F-2-78_S29_aln-mito-wNuc_se.sorted.rmdup.30x30.bam MS-F-5-257_S30_aln-mito-wNuc_se.sorted.rmdup.30x30.bam MS-F-7-128_S31_aln-mito-wNuc_se.sorted.rmdup.30x30.bam

module load samtools; samtools merge arch_shells_aln-mito-wNuc_se.sorted.rmdup.30x30.bam U60-10_20_S24_aln-mito-wNuc_se.sorted.rmdup.30x30.bam U60-110_120-5659_S25_aln-mito-wNuc_se.sorted.rmdup.30x30.bam U61-20-30_S26_aln-mito-wNuc_se.sorted.rmdup.30x30.bam U61-50_60-5454_S27_aln-mito-wNuc_se.sorted.rmdup.30x30.bam U61-80_90-5596C_S28_aln-mito-wNuc_se.sorted.rmdup.30x30.bam

module load samtools; samtools rmdup -S ${SHELL_ANC_FILT_READS_NU}/${FILT2}.sorted.rmdup.30x30.bam ${SHELL_ANC_FILT_READS_NU}/${MAP}.sorted.rmdupx2.30x30.bam

module load mapdamage; mapDamage -i paleo_shells_aln-mito-wNuc_se.sorted.rmdupx2.30x30.bam -r /storage/home/aps216/scratch/Conch/genomes/mito/norgal_output4_wNuc/circular.candidate.fa



module load samtools; samtools merge boiled_shells_aln-mito-wNuc_se.sorted.rmdup.30x30.bam CayoAguaBoil1_S20_aln-mito-wNuc_se.sorted.rmdup.30x30.bam CayoAguaBoil2_S21_aln-mito-wNuc_se.sorted.rmdup.30x30.bam CayoAguaBoil3_S22_aln-mito-wNuc_se.sorted.rmdup.30x30.bam

module load samtools; samtools merge live_shells_aln-mito-wNuc_se.sorted.rmdup.30x30.bam BocaDrago3-10_S19_aln-mito-wNuc_se.sorted.rmdup.30x30.bam BocaDrago3-3_S18_aln-mito-wNuc_se.sorted.rmdup.30x30.bam CayoAgua2-3_S15_aln-mito-wNuc_se.sorted.rmdup.30x30.bam CayoAgua2-5_S16_aln-mito-wNuc_se.sorted.rmdup.30x30.bam CayoAgua2-6_S17_aln-mito-wNuc_se.sorted.rmdup.30x30.bam

module load samtools; samtools rmdup -S ${SHELL_ANC_FILT_READS_NU}/${FILT2}.sorted.rmdup.30x30.bam ${SHELL_ANC_FILT_READS_NU}/${MAP}.sorted.rmdupx2.30x30.bam

module load mapdamage; mapDamage -i boiled_shells_aln-mito-wNuc_se.sorted.rmdupx2.30x30.bam -r /storage/home/aps216/scratch/Conch/genomes/mito/norgal_output4_wNuc/circular.candidate.fa
```


