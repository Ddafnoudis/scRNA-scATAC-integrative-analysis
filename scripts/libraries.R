install.packages("Seurat")
library(Seurat, help, pos = 2, lib.loc = NULL)
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("SingleR")

library(SingleR, help, pos = 2, lib.loc = NULL)
install.packages("Signac")
library(Signac, help, pos = 2, lib.loc = NULL)
install.packages("hdf5r")
library(hdf5r, help, pos = 2, lib.loc = NULL)
