############################################################
######### Dockerfile for LaTeX with Python Support #########
############################################################

# |---------------------- Environment ---------------------|
ARG BASE_IMAGE=texlive/texlive
ARG BASE_RELEASE=latest
ARG BASE_SIZE=full
ARG BASE_FLAVOR=src

############################################################
# |---------------------- Base Image ----------------------|
FROM ${BASE_IMAGE}:${BASE_RELEASE}-${BASE_SIZE}-${BASE_FLAVOR} AS base

ARG AUTHOR="Jan Rother"
ARG DATE="2024-10"
ARG VERSION="1.0"

# |----------------------- Meta Data ----------------------|
LABEL org.opencontainers.image.author=$AUTHOR \
      org.opencontainers.image.date=$DATE \
      org.opencontainers.image.version=$VERSION \
      org.opencontainers.image.title="LaTeX" \
      org.opencontainers.image.description="Dockerfile for LaTeX with Python Support"

# |----------------------- Packages -----------------------|
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean

RUN tlmgr update --self --all

# |--------------------- Customization --------------------|
RUN apt-get update && \
    apt-get install -y zsh fzf git-lfs && \
    chsh -s $(which zsh) && \
    apt-get clean
COPY resources/welcome.txt /root/welcome.txt

# |----------------------- Terminal -----------------------|
COPY resources/.zshrc /root/.zshrc
COPY resources/starship.toml /root/.config/starship.toml

# Starship prompt installation
RUN curl -sS https://starship.rs/install.sh | sh -s -- -y -v latest

# Zinit installation
RUN curl -sS https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh | sh
# Install Zinit plugins
RUN zsh -il

# |----------------------- Finalize -----------------------|
WORKDIR /workspace
ENTRYPOINT [ "/bin/zsh" ]
############################################################
