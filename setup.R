# ----------------------------------------------------------
# Setup script for MRes R course (binary-only, no toolchains)
# ----------------------------------------------------------

# 1) Ensure renv at a known version
if (!requireNamespace("renv", quietly = TRUE) ||
    utils::packageVersion("renv") != "1.1.5") {
  install.packages("renv", version = "1.1.5")
}

# 1) Bioc repos + binary preference for everything else
if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
options(repos = BiocManager::repositories())
if (.Platform$OS.type == "windows" || Sys.info()[["sysname"]] == "Darwin") {
  options(pkgType = "binary")
}
options(install.packages.compile.from.source = "never")

# 2) Install source-only *data* packages explicitly (no compilers required)
data_pkgs <- c("org.Rn.eg.db", "GO.db", "GenomeInfoDbData")

old <- getOption("install.packages.compile.from.source")
options(install.packages.compile.from.source = "always")
try(renv::install(data_pkgs, type = "source"), silent = TRUE)
options(install.packages.compile.from.source = old)

# 3) Now restore the rest (will use binaries)
renv::restore(prompt = FALSE)