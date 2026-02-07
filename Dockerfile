# Base image
FROM rocker/rstudio:4.4.2

# Install the remotes package
RUN Rscript -e "install.packages('remotes', repos='https://cran.rstudio.com/')"

# Install a chosen package with a pinned version
RUN Rscript -e "remotes::install_version('cowsay', version='0.8.0', repos='https://cran.rstudio.com/')"

