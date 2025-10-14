# ----------------------------------------------------------
# Setup script for MRes R course (binary-only, no toolchains)
# ----------------------------------------------------------

# 0) Never compile from source (applies to CRAN + Bioc via install.packages)
options(install.packages.compile.from.source = "never")

# 1) Ensure renv at a known version
if (!requireNamespace("renv", quietly = TRUE) ||
    utils::packageVersion("renv") != "1.1.5") {
  install.packages("renv", version = "1.1.5")
}

# 2) Make sure Bioc repos are visible (so Bioc binaries are found)
if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
options(repos = BiocManager::repositories())

# 3) Force binaries on Windows/macOS
if (.Platform$OS.type == "windows" || Sys.info()[["sysname"]] == "Darwin") {
  options(pkgType = "binary")
}

# 4) Nudge lockfile to binary-available versions for native-heavy pkgs
#    (prevents renv from downgrading to source-only builds)
try({
  ap <- available.packages(type = "binary")
  bump <- function(p) if (p %in% rownames(ap)) renv::record(sprintf("%s@%s", p, ap[p,"Version"]))
  for (p in c("openssl","BiocParallel","Rsubread","DESeq2","igraph")) bump(p)
}, silent = TRUE)

# 5) Restore everything
renv::restore(prompt = FALSE)