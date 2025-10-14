# ----------------------------------------------------------
# Setup script for MRes R course
# ----------------------------------------------------------

# Ensure renv
if (!requireNamespace("renv", quietly = TRUE) ||
    utils::packageVersion("renv") != "1.1.5") {
  install.packages("renv", version = "1.1.5")
}

options(repos = c(CRAN = "https://packagemanager.posit.co/cran/latest"))
if (.Platform$OS.type == "windows") options(pkgType = "binary")

# If lockfile pins an openssl that lacks a Win binary on this R, bump it
try({
  ap <- available.packages()
  if ("openssl" %in% rownames(ap)) {
    # Use the repo's current openssl (has a binary for this R)
    ver <- ap["openssl", "Version"]
    renv::record(paste0("openssl@", ver))
  }
}, silent = TRUE)

renv::restore(prompt = FALSE)