# Install/activate renv
if (!requireNamespace("renv", quietly = TRUE)) install.packages("renv")

# Prefer Posit Package Manager (more reliable binaries)
options(repos = c(CRAN = "https://packagemanager.posit.co/cran/latest"))

# On macOS, prefer binaries (Windows uses binaries by default)
if (Sys.info()[["sysname"]] == "Darwin") options(pkgType = "binary")

# Restore the project library
renv::restore(prompt = FALSE)
