# PBMC scRNA-seq Analysis (Seurat)

This project implemented a complete single-cell RNA-seq (scRNA-seq) analysis pipeline on human peripheral blood mononuclear cells (PBMCs) using Seurat (R).  It used publicly available data of 10x Genomics for a reproducible and organized method of analyzing single-cell transcriptomic data.

## Workflow
1. Data loading and QC
2. Normalization and feature selection
3. Clustering and dimensionality reduction
4. Marker identification and cell type annotation

## Structure
- `scripts/` → analysis scripts
- `results/` → figures and tables
- `data/` → raw data (ignored in Git)
  
## Results
This analysis successfully determined the key populations of immune cells, such as CD4+ and CD8+ T cells, B cells, NK cells, monocytes, dendritic cells, and platelets. The workflow was found to be effective as clustering and marker-based annotation showed that these cell types were clearly separated in UMAP space.
The annotated UMAP visualization below illustrates the distinct clustering of the major immune cell populations:
![UMAP](results/figures/umap_annotated.png)

## Biological Interpretation
The UMAP patterns of clustering are in correlation with the known biological organization of human PBMCs. The populations of adaptive immunity (CD4+ and CD8+ T cells, B cells) are distinctly segregated with the populations of innate immunity (monocytes, dendritic cells, NK cells), which is in line with their functional capabilities. The monocytes and inflammatory monocytes are closely related clusters, which means that they have common transcriptional programs with activation-specific distinctions. Dendritic cells are represented as a specific population, which is a manifestation of their specialized role in antigen presentation. 
The identification of platelet clusters and smaller populations such as mast cells and gamma-delta T cells further highlights the sensitivity of the workflow in detecting both abundant and rare immune cell types.

## Tools
- R
- Seurat
- ggplot2

## Author
Abdulrasheed Buhari
