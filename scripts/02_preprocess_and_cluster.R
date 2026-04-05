library(Seurat)
library(here)
library(ggplot2)

# Load QC-filtered Seurat object
pbmc <- readRDS(
  here("pbmc-scrna-seurat", "results", "pbmc_qc_filtered.rds")
)

pbmc

#Normalize data
  pbmc <- NormalizeData(pbmc)

#Identify highly variable genes
  pbmc <- FindVariableFeatures(pbmc, selection.method = "vst", nfeatures = 2000)

  head(VariableFeatures(pbmc)) 
#data scaling
  pbmc <- ScaleData(pbmc)