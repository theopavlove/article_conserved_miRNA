#!/bin/bash

D_DATA="/home/fpavlov/github/article_conserved_miRNA/data"
D_UTILS="/home/fpavlov/github/article_conserved_miRNA/utils"

# F_RMSK="$D_DATA/mm10.rmsk.txt.gz"
# wget -c -O $F_RMSK https://hgdownload.soe.ucsc.edu/goldenPath/mm10/database/rmsk.txt.gz

# F_MM10_FA="$D_DATA/mm10.fa"
# wget -c -P $D_DATA https://hgdownload.soe.ucsc.edu/goldenPath/mm10/bigZips/mm10.fa.gz
# gzip -cd $D_DATA/mm10.fa.gz > $F_MM10_FA

# wget -c -P $D_DATA https://ftp.ncbi.nlm.nih.gov/geo/samples/GSM775nnn/GSM775313/suppl/GSM775313_H3K9Ac_s_3_sorted_unique.bed.gz
# wget -c -P $D_DATA https://ftp.ncbi.nlm.nih.gov/geo/samples/GSM775nnn/GSM775314/suppl/GSM775314_H3K14Ac_13HH3_s_4_sorted.bed.gz

gzip -cd $D_DATA/GSM775313_H3K9Ac_s_3_sorted_unique.bed.gz > $D_DATA/mm9.H3K9ac.bed
gzip -cd $D_DATA/GSM775314_H3K14Ac_13HH3_s_4_sorted.bed.gz > $D_DATA/mm9.H3K14ac.bed

sed -i '$ d' $D_DATA/mm9.H3K9ac.bed
sed -i '1d' $D_DATA/mm9.H3K14ac.bed

F_LIFTOVER="$D_UTILS/liftOver"
F_MM9TOMM10CHAIN="$D_DATA/mm9ToMm10.over.chain.gz"

$F_LIFTOVER $D_DATA/mm9.H3K9ac.bed $F_MM9TOMM10CHAIN $D_DATA/mm10.H3K9ac.uplift.bed unmapped_regions.bed
$F_LIFTOVER $D_DATA/mm9.H3K14ac.bed $F_MM9TOMM10CHAIN $D_DATA/mm10.H3K14ac.uplift.bed unmapped_regions.bed

rm unmapped_regions.bed $D_DATA/mm9.H3K9ac.bed $D_DATA/mm9.H3K14ac.bed
