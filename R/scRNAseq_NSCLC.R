# load libraries
library(Seurat)
library(tidyverse)

# Load the NSCLC dataset
nsclc.sparse.m <- Read10X_h5(filename = 'gene_expression_data/40k_NSCLC_DTC_3p_HT_nextgem_Multiplex_count_raw_feature_bc_matrix.h5')
str(nsclc.sparse.m)
counts <-  nsclc.sparse.m$`Gene Expression`

# Initialize the Seurat object with the raw (non-normalized data).
nsclc.seurat.obj <- CreateSeuratObject(counts = counts, project = "NSCLC", min.cells = 3, min.features = 200)
str(nsclc.seurat.obj)
nsclc.seurat.obj
