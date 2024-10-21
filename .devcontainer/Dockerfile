############################################################
######### Dockerfile for LaTeX with Python Support #########
############################################################

ARG AUTHOR="Jan Rother"
ARG DATE="2024-10"
ARG VERSION="1.0"

# |---------------------- Environment ---------------------|
ARG BASE_IMAGE=texlive/texlive
ARG BASE_RELEASE=latest
ARG BASE_SIZE=full
ARG BASE_FLAVOR=src

############################################################
# |---------------------- Base Image ----------------------|
FROM ${BASE_IMAGE}:${BASE_RELEASE}-${BASE_SIZE}-${BASE_FLAVOR} AS base

# |----------------------- Meta Data ----------------------|
LABEL org.opencontainers.image.author="${AUTHOR}" \
      org.opencontainers.image.date="${DATE}" \
      org.opencontainers.image.version="${VERSION}" \
      org.opencontainers.image.title="LaTeX" \
      org.opencontainers.image.description="Dockerfile for LaTeX with Python Support"

# |----------------------- Packages -----------------------|
RUN apt-get update &&  \
    apt-get upgrade -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN tlmgr update --self --all

# |--------------------- Customization --------------------|
# none

# |----------------------- Finalize -----------------------|
WORKDIR /workspace

############################################################