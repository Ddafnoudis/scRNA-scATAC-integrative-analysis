#!/bin/bash

## PBMC_Healthy_Donor/ folder

# 1. RNA-seq filtered matrix (HDF5) — main input for Seurat/Scanpy
wget https://cf.10xgenomics.com/samples/cell-arc/2.0.0/pbmc_unsorted_10k/pbmc_unsorted_10k_filtered_feature_bc_matrix.h5 --directory-prefix=PBMC_Healthy_Donor/

# 2. Per-barcode QC metrics — use for mitochondrial content, nUMI, etc.
wget https://cf.10xgenomics.com/samples/cell-arc/2.0.0/pbmc_unsorted_10k/pbmc_unsorted_10k_per_barcode_metrics.csv --directory-prefix=PBMC_Healthy_Donor/

# 3. Cell Ranger QC report — HTML visualization
wget https://cf.10xgenomics.com/samples/cell-arc/2.0.0/pbmc_unsorted_10k/pbmc_unsorted_10k_web_summary.html --directory-prefix=PBMC_Healthy_Donor/

# 4. ATAC-seq fragments — for ATAC peak analysis, pycisTopic, Signac
wget https://cf.10xgenomics.com/samples/cell-arc/2.0.0/pbmc_unsorted_10k/pbmc_unsorted_10k_atac_fragments.tsv.gz --directory-prefix=PBMC_Healthy_Donor/
wget https://cf.10xgenomics.com/samples/cell-arc/2.0.0/pbmc_unsorted_10k/pbmc_unsorted_10k_atac_fragments.tsv.gz.tbi --directory-prefix=PBMC_Healthy_Donor/

# 5. ATAC peak coordinates (BED) — for annotation or visualization
wget https://cf.10xgenomics.com/samples/cell-arc/2.0.0/pbmc_unsorted_10k/pbmc_unsorted_10k_atac_peaks.bed --directory-prefix=PBMC_Healthy_Donor/

# 6. ATAC peak annotation — matches peaks to nearby genes
wget https://cf.10xgenomics.com/samples/cell-arc/2.0.0/pbmc_unsorted_10k/pbmc_unsorted_10k_atac_peak_annotation.tsv --directory-prefix=PBMC_Healthy_Donor/

# 7. Optional: analysis outputs — might include cluster identities, markers
wget https://cf.10xgenomics.com/samples/cell-arc/2.0.0/pbmc_unsorted_10k/pbmc_unsorted_10k_analysis.tar.gz --directory-prefix=PBMC_Healthy_Donor/


## 10k_Human_PBMCs/ folder

# Output Files
wget --directory-prefix=10k_Human_PBMCs https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_per_barcode_metrics.csv
wget --directory-prefix=10k_Human_PBMCs https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_web_summary.html
wget --directory-prefix=10k_Human_PBMCs https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_filtered_feature_bc_matrix.h5
wget --directory-prefix=10k_Human_PBMCs https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_atac_fragments.tsv.gz
wget --directory-prefix=10k_Human_PBMCs https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_atac_fragments.tsv.gz.tbi
wget --directory-prefix=10k_Human_PBMCs https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_atac_peaks.bed
wget --directory-prefix=10k_Human_PBMCs https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_atac_peak_annotation.tsv
wget --directory-prefix=10k_Human_PBMCs https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_analysis.tar.gz

echo "Download completed!"