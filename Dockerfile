FROM rocker/verse:4.3.1

COPY raps_rug_tunis /home/rstudio/raps_rug_tunis

RUN chown -R rstudio:rstudio /home/rstudio/raps_rug_tunis

RUN echo 'options(repos = c(REPO_NAME = "https://packagemanager.rstudio.com/cran/__linux__/jammy/2023-06-23"))' >> /root/.Rprofile

RUN R -e "install.packages(c('tidyverse', 'janitor', 'renv', 'rmarkdown', 'targets', 'tarchetypes'))"


