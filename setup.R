required_packages <- c("tidyverse","arrow","babynames","curl","ggrepel","ggridges","ggthemes","hexbin",
                       "janitor","leaflet","nycflights13","openxlsx","palmerpenguins","plotly",
                       "repurrrsive","tidymodels","writexl","AnnotationDbi", "BiocManager","BiocVersion",
                       "DESeq2","lattice","Matrix","tidySummarizedExperiment","org.Rn.eg.db", 
                       "GO.db",
                       "limma","edgeR","Rsubread","biomaRt","pheatmap","clusterProfiler")


# Install BiocManager if needed
if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
}

# Try BiocManager first, then fallback to install.packages
for (pkg in required_packages) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    message("Trying BiocManager::install('", pkg, "')")
    tryCatch({
      BiocManager::install(pkg, ask = FALSE, update = FALSE)
    }, error = function(e_bioc) {
      message("BiocManager failed. Trying install.packages('", pkg, "')")
      tryCatch({
        install.packages(pkg, dependencies = TRUE)
      }, error = function(e_cran) {
        message("Failed to install '", pkg, "' via both methods.")
      })
    })
  }
}