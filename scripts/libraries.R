# Set default CRAN mirror
cran_repo <- "https://cloud.r-project.org"

# Install Seurat
install.packages("Seurat", repos = cran_repo)

# Load Seurat
library(Seurat, help, pos = 2, lib.loc = NULL)

# Install BiocManager if not already installed
if (!require("BiocManager", quietly = TRUE)) {
    install.packages("BiocManager", repos = cran_repo)
}

# Use BiocManager to install SingleR
BiocManager::install("SingleR")

# Use BiocManager to install Rsamtools
BiocManager::install("Rsamtools")

# Load SingleR
library(SingleR, help, pos = 2, lib.loc = NULL)

# Install and load Signac
install.packages("Signac", repos = cran_repo)
library(Signac, help, pos = 2, lib.loc = NULL)

# Install and load hdf5r
install.packages("hdf5r", repos = cran_repo)
library(hdf5r, help, pos = 2, lib.loc = NULL)
