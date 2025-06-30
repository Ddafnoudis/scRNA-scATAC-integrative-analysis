# 10k_Human_PBMCs/ folder QC, Data integration etc.

# Libraries
library(Seurat)
library(Signac)
library(hdf5r)

# Package version
packageVersion("Seurat")
packageVersion("Signac")

# Check working directory
getwd()

# Give variables to all data
fFmatrix1_10k <- "10k_Human_PBMCs/10k_PBMC_Multiome_nextgem_Chromium_X_filtered_feature_bc_matrix.h5"
fFmatrix1_pbmc <- "PBMC_Healthy_Donor/pbmc_unsorted_10k_filtered_feature_bc_matrix.h5"

# List files in the current directory
list.files("10k_Human_PBMCs", pattern = "h5")
file.exists(fFmatrix1_10k)

#check file size with file.info
file.info("10k_Human_PBMCs/10k_PBMC_Multiome_nextgem_Chromium_X_filtered_feature_bc_matrix.h5")$size

# Define & Read H5 file
fFmatrix1_10k <- Read10X_h5(fFmatrix1_10k)
fFmatrix1_pbmc <- Read10X_h5(fFmatrix1_pbmc)

# Show first 1 rows of matrix
head(fFmatrix1_10k)

