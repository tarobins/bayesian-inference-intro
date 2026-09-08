# ==============================================================================
# Bayesian Inference: A Practical Introduction - R Package Installation Script
# ==============================================================================

cat('>>> [1/3] Installing CRAN dependencies (coda, loo, MASS, IRkernel, remotes)...\n')
cran_packages <- c('coda', 'loo', 'MASS', 'IRkernel', 'remotes')

new_packages <- cran_packages[!(cran_packages %in% installed.packages()[, 'Package'])]
if (length(new_packages) > 0) {
    install.packages(new_packages, repos = 'https://cloud.r-project.org')
} else {
    cat('CRAN packages already installed.\n')
}

cat('\n>>> [2/3] Registering IRkernel with Jupyter...\n')
tryCatch({
    IRkernel::installspec(user = TRUE)
    cat('IRkernel successfully registered with Jupyter!\n')
}, error = function(e) {
    cat('IRkernel registration notice: ', conditionMessage(e), '\n')
})

cat('\n>>> [3/3] Installing rethinking package (Optional for Sheets 3 & 5)...\n')
if (!('rethinking' %in% installed.packages()[, 'Package'])) {
    cat('Installing rethinking from GitHub (rmcelreath/rethinking)...\n')
    tryCatch({
        remotes::install_github('rmcelreath/rethinking', upgrade = 'never')
        cat('rethinking package installed successfully!\n')
    }, error = function(e) {
        cat('Note: rethinking installation encountered an error:\n', conditionMessage(e), '\n')
        cat('You can still run Sheets 1, 2, 4, 6, 7 using Base R and coda!\n')
    })
} else {
    cat('rethinking package already installed.\n')
}

cat('\n>>> Setup complete! You can now launch Jupyter and select the R kernel.\n')
