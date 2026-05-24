# One-time package installer — run before knitting the Rmd
pkgs <- c(
  "survival",    # Kaplan-Meier, Cox PH
  "survminer",   # publication-quality survival plots
  "mice",        # multiple imputation
  "tableone",    # Table 1 demographics
  "ggplot2",     # visualization
  "dplyr",       # data manipulation
  "tidyr",       # reshaping
  "broom",       # tidy model outputs
  "knitr",       # report generation
  "kableExtra",  # formatted tables
  "pwr",         # power analysis
  "forestplot",  # forest plots
  "rmarkdown",   # document rendering
  "scales",      # axis formatting
  "gridExtra",   # multi-panel plots
  "patchwork"    # plot composition
)

install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    if (pkg %in% c("survival", "mice", "tableone", "survminer",
                   "ggplot2", "dplyr", "tidyr", "broom",
                   "knitr", "kableExtra", "pwr", "forestplot",
                   "rmarkdown", "scales", "gridExtra", "patchwork")) {
      install.packages(pkg, repos = "https://cran.rstudio.com/")
    }
  }
}

invisible(lapply(pkgs, install_if_missing))
cat("All packages installed successfully.\n")
