# QC, Data integration etc.

# Libraries
library(Seurat)
library(Signac)
library(hdf5r)

# Package version
packageVersion("Seurat")
packageVersion("Signac")

# Check working directory
getwd()

# List files in the current directory
list.files("PBMC_Healthy_Donor", pattern = "h5")


fFmatrix_1 <- Read10X_h5("PBMC_Healthy_Donor/pbmc_unsorted_10k_filtered_feature_bc_matrix.h5.1")

