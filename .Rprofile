# .Rprofile
source("renv/activate.R")

# Set options for binary packages
options(
  install.packages.compile.from.source = "never",
  pkgType = "binary"
)

# Platform-specific settings
if (.Platform$OS.type == "windows") {
  options(pkgType = "win.binary")
} else if (Sys.info()[["sysname"]] == "Darwin") {
  options(pkgType = "mac.binary")
}
