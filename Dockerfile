# building docker image to use R-Studio in a browser

FROM rocker/verse:latest

# optional:
MAINTAINER 'Marija Ninic' marijaninic@outlook.com

## create directories
RUN mkdir -p /data
RUN mkdir -p /rscript
RUN mkdir -p /output

## copy files
COPY rscript/install_packages.R /install_packages.R

## install packages
# command RUN will be executed during build of the image
RUN Rscript /install_packages.R
