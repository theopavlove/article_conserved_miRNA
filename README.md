# article_conserved_miRNA

## Code

- [01_Kouzine_data_preprocessing.ipynb](01_Kouzine_data_preprocessing.ipynb) - the following types of flipons were uplifted from mm9 to mm10 using UCSC [liftOver](http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64) tool: H-DNA (17,110 → 17,000), G4 (20,260 → 20,253), Z-DNA (25,063 → 25,059), SIDD (15,299 → 15,296). `bedtools 2.26` software was used to find overlaps between `.bed` files and apply slops of different size to the initial flipon coordinates.
- [02_miRNA_overlaps.ipynb](02_miRNA_overlaps.ipynb) - the input `.bed` files were converted into `fasta` format using `biopython 1.79` python library. Each flipon sequence was tested for embedding miRNA seed sequences via default python string and array operations. The results were saved as a `pandas` dataframe and later converted into `.xlsx` format for better readability.
- [03_calculate_pie_charts.ipynb](03_calculate_pie_charts.ipynb) - values for pie charts were calculated using `ChIPpeakAnno` and `ChIPseeker` R libraries. The genomic annotation used as a reference was [GENCODE vM25](https://www.gencodegenes.org/mouse/release_M25.html) (GRCm38.p6).
- [04_draw_pie_charts.ipynb](04_draw_pie_charts.ipynb) - the pie charts were drawn using `plotly 5.8.0` python library.

## Generated data

- [img/](img/) - pie charts for the genomewide distribution of experimentally mapped flipons.
- [mm10_kouzine_ssDNA/](mm10_kouzine_ssDNA/) - `.bed` files generated in [01_Kouzine_data_preprocessing.ipynb](01_Kouzine_data_preprocessing.ipynb) and [02_miRNA_overlaps.ipynb](02_miRNA_overlaps.ipynb) that are used in the miRNA overlap analysis and pie chart construction.
- [mm10_kouzine_ssDNA_fa/](mm10_kouzine_ssDNA_fa/) - `.fasta` files that are used in the miRNA overlap analysis.
- [kouzine_mirna_overlaps.tsv](kouzine_mirna_overlaps.tsv) - table with information about the percentage of flipons of each type that overlap miRNA seed regions.
- [kouzine_mirna_overlap_increase.tsv](kouzine_mirna_overlap_increase.tsv) - auxiliary overlap table.
