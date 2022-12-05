from pathlib import Path

D_ROOT = Path("/home/fpavlov/projects/article_conserved_miRNA/")

D_IMG = D_ROOT / "img"

# Utilities
D_UTILS = D_ROOT / "utils"
F_BIGBEDTOBED = D_UTILS / "bigBedToBed"

D_LIFTOVER = D_UTILS / "liftover"
F_LIFTOVER = D_LIFTOVER / "liftOver"
F_LIFTOVER_CHAIN = D_LIFTOVER / "mm9ToMm10.over.chain.gz"


# Data
D_DATA = D_ROOT / "data"
F_MIRNA_LIST = D_DATA / "mirna_list.tsv"

D_GEBR = D_DATA / "gebr"

D_TABLES = D_DATA / "tables"
F_FLIPON_TO_MIRNA = D_TABLES / "flipon_to_mirna.tsv"
F_FLIPON_TO_GENE = D_TABLES / "flipon_to_gene_feature.tsv"
F_FLIPON_TO_DATA = D_TABLES / "flipon_to_data.tsv"
F_FLIPON_TO_DATA_MIRNA = D_TABLES / "flipon_to_data_mirna.tsv"
F_FLIPON_TO_RMSK = D_TABLES / "flipon_to_rmsk.tsv"
F_FLIPON_TO_CCRE = D_TABLES / "flipon_to_ccre.tsv"


D_FLIPONS_BED = D_DATA / "flipons_experimental_bed"
D_FLIPONS_FA = D_DATA / "flipons_experimental_fasta"


D_CCRE = D_DATA / "cCRE"
F_CCRE = D_CCRE / "mm10.cCRE.bed"


D_RMSK = D_DATA / "rmsk"
F_RMSK = D_RMSK / "mm10.rmsk.txt.gz"
F_RMSK_LINE_LTR = D_RMSK / "mm10.rmsk.line_ltr.bed"


# Genome
D_GENOME = D_DATA / "genome"
F_CHROM_SIZES = D_GENOME / "mm10.chrom.sizes"
F_GENOME = D_GENOME / "mm10.fa"
F_GENCODE = D_GENOME / "gencode.vM25.annotation.gtf.gz"
F_GENCODE_STR = str(F_GENCODE)
