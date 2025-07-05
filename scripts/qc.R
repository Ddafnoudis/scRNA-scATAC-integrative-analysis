# 10k_Human_PBMCs/ folder QC, Data integration etc.

# Libraries
library(Seurat)
library(Signac)
library(hdf5r)

# Package version
packageVersion("Seurat")
packageVersion("Signac")
packageVersion("hdf5r")

# Check working directory
getwd()

# Give variables to all data
fFmatrix1_10k <- "10k_Human_PBMCs/10k_PBMC_Multiome_nextgem_Chromium_X_filtered_feature_bc_matrix.h5"
fFmatrix1_pbmc <- "PBMC_Healthy_Donor/pbmc_unsorted_10k_filtered_feature_bc_matrix.h5"

# List files in the current directory
list.files("10k_Human_PBMCs", pattern = "h5")
file.exists(fFmatrix1_10k)

# Check file size with file.info
print(paste("Size of the file:", file.info("10k_Human_PBMCs/10k_PBMC_Multiome_nextgem_Chromium_X_filtered_feature_bc_matrix.h5")$size))

# Define & Read H5 file
fFmatrix1_10k <- Read10X_h5(fFmatrix1_10k)
# Check the modalities
str(fFmatrix1_10k)

# Get the count of gene expression
cts_gene_expression <- fFmatrix1_10k$`Gene Expression`
print(paste("Number of genes in Gene Expression:", nrow(cts_gene_expression)))
fFmatrix1_pbmc <- Read10X_h5(fFmatrix1_pbmc)

