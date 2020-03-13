FROM continuumio/miniconda2:4.7.12
MAINTAINER Alexander Paul <alex.paul@.wustl.edu>

LABEL \
  description="Docker image to run PacBio's bionconda package(https://github.com/PacificBiosciences/pbbioconda)"

RUN apt-get update && apt-get install -y \
  wget && \
  apt-get clean all


RUN conda install -y -c bioconda \
  pbsv"=2.3.0" \
  pbccs"=4.2.0" \
  pbbam"=1.0.7" \
  pbmm2"=1.2.1" \
  lima"=1.11.0"

WORKDIR /
