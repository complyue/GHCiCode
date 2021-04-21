FROM gitpod/workspace-full:latest

USER gitpod

# or git will keep prompting
RUN git config --global pull.ff only

# ~/.cabal and ~/.ghcup will be lost across Gitpod workspace restarts,
# ghcup to be installed to /workspace/ so it is persisted as part of prebuilt
# workspace, we add their bin to PATH here
ENV PATH="/workspace/.cabal/bin:/workspace/.ghcup/bin:${PATH}"

# ~/.cabal and ~/.stack will be lost across Gitpod workspace restarts,
# use /workspace/ so it is persisted as part of prebuilt workspace
ENV CABAL_DIR=/workspace/.cabal
ENV STACK_ROOT=/workspace/.stack

USER root

# install haskell stack
RUN curl -sSL https://get.haskellstack.org/ | sh
