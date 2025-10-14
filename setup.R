# ----------------------------------------------------------
# Setup script for MRes R course  (binary-only, cross-platform)
# ----------------------------------------------------------

# 1) Ensure a known renv version
if (!requireNamespace("renv", quietly = TRUE) ||
    utils::packageVersion("renv") != "1.1.5") {
  install.packages("renv", version = "1.1.5")
}

# 2) Use Bioconductor + CRAN repos (so Bioc binaries are visible)
if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
options(repos = BiocManager::repositories())

# 3) Prefer precompiled binaries on Windows & macOS
if (.Platform$OS.type == "windows" || Sys.info()[["sysname"]] == "Darwin") {
  options(pkgType = "binary")
}

renv::settings$use.cache(TRUE)
renv::settings$bioconductor.version(BiocManager::version())

# 5) Restore the project library
renv::restore(prompt = FALSE)
