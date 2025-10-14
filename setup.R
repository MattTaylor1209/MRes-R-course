# ----------------------------------------------------------
# Setup script for MRes R course
# ----------------------------------------------------------

# 1. Ensure renv (specific version) is installed
if (!requireNamespace("renv", quietly = TRUE) ||
    utils::packageVersion("renv") != "1.1.5") {
  install.packages("renv", version = "1.1.5")
}

# 2. Use Posit Package Manager (faster, more reliable)
options(repos = c(CRAN = "https://packagemanager.posit.co/cran/latest"))

# 3. On Windows, prefer precompiled binaries
if (.Platform$OS.type == "windows") {
  options(pkgType = "binary")
}

# 4. Activate the project (ensures correct renv context)
renv::activate(".")

# 5. Restore all packages listed in renv.lock
renv::restore(prompt = FALSE)
