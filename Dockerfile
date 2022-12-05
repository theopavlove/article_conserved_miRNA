# Docker inheritance
FROM bioconductor/bioconductor_docker:devel

# Install required Bioconductor package
RUN R -e 'BiocManager::install("ChIPseeker")'
RUN R -e 'BiocManager::install("GenomicFeatures")'
RUN R -e 'BiocManager::install("ChIPpeakAnno")'
RUN R -e 'BiocManager::install("clusterProfiler")'