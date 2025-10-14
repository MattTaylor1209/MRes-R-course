# ----------------------------------------------------------
# Setup script for MRes R course (binary-only, no toolchains)
# ----------------------------------------------------------

# 1) Ensure a known renv version
if (!requireNamespace("renv", quietly = TRUE) ||
    utils::packageVersion("renv") != "1.1.5") {
  install.packages("renv", version = "1.1.5")
}

# 2) Use Bioconductor + CRAN repos so Bioc binaries are visible
if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
options(repos = BiocManager::repositories())

# 3) Force precompiled binaries on Windows & macOS; never compile from source
if (.Platform$OS.type == "windows" || Sys.info()[["sysname"]] == "Darwin") {
  options(pkgType = "binary")
}
options(install.packages.compile.from.source = "never")

# 4) (Optional safety) If a local mirror only offers newer binary versions,
#    record those for a few native-heavy packages to avoid source downgrades.
try({
  ap <- available.packages(type = "binary")
  bump_if_binary <- function(pkg) {
    if (pkg %in% rownames(ap)) renv::record(paste0(pkg, "@", ap[pkg, "Version"]))
  }
  for (pkg in c("openssl", "BiocParallel", "Rsubread")) bump_if_binary(pkg)
}, silent = TRUE)

# 5) Restore everything from the lockfile (into the project library)
renv::restore(prompt = FALSE)
