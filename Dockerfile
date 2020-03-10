FROM continuumio/miniconda2:4.7.12
MAINTAINER Alexander Paul <alex.paul@.wustl.edu>

LABEL \
  description="Docker image to run PacBio's bionconda package(https://github.com/PacificBiosciences/pbbioconda)"

RUN apt-get update && apt-get install -y \
  wget && \
  apt-get clean all


RUN conda install -y -c bioconda \
  blasr"=5.3.3" \
  pbsv"=2.3.0"

WORKDIR /
