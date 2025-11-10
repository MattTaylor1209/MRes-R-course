required_packages <- c("tidyverse","arrow","babynames","curl","ggrepel","ggridges","ggthemes","hexbin",
                       "janitor","leaflet","nycflights13","openxlsx","palmerpenguins","plotly",
                       "repurrrsive","tidymodels","writexl","AnnotationDbi", "BiocManager","BiocVersion",
                       "DESeq2","lattice","Matrix","tidySummarizedExperiment","org.Rn.eg.db", 
                       "GO.db",
                       "limma","edgeR","Rsubread","biomaRt","pheatmap","clusterProfiler")


# Ensure binaries only (good for students without RTools)
options(pkgType = "binary")
options(install.packages.compile.from.source = "never")
options(install.packages.check.source = "no")

# Make sure Bioconductor repos are used correctly
if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager", type = "binary")
}


# Try BiocManager first, then fallback to install.packages
for (pkg in required_packages) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    message("Trying BiocManager::install('", pkg, "')")
    tryCatch({
      BiocManager::install(pkg, update = FALSE)
    }, error = function(e_bioc) {
      message("BiocManager failed. Trying install.packages('", pkg, "')")
      tryCatch({
        install.packages(pkg, dependencies = TRUE, update = FALSE, type = "binary")
      }, error = function(e_cran) {
        message("Failed to install '", pkg, "' via both methods.")
      })
    })
  }
}

source_packages <- c("org.Rn.eg.db", "GO.db")

for (pkg in source_packages) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    message("Trying BiocManager::install('", pkg, "')")
    tryCatch({
      BiocManager::install(pkg, type = "source", update = FALSE)
    }, error = function(e_bioc) {
      message("BiocManager failed")
    })
  }
}
