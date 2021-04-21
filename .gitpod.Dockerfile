FROM gitpod/workspace-full:latest

USER gitpod

# or git will keep prompting
RUN git config --global pull.ff only

# ~/.ghcup will be lost across Gitpod workspace restarts,
# install ghcup to /workspace/ so it is persisted as part of prebuilt workspace
RUN mkdir -p /workspace/.ghcup/bin
RUN curl -sSL https://downloads.haskell.org/~ghcup/x86_64-linux-ghcup \
      -o /workspace/.ghcup/bin/ghcup
ENV PATH="/workspace/.ghcup/bin:${PATH}"
RUN /workspace/.ghcup/bin/ghcup install ghc
RUN /workspace/.ghcup/bin/ghcup install cabal

# ~/.stack will be lost across Gitpod workspace restarts,
# use /workspace/ so it is persisted as part of prebuilt workspace
ENV STACK_ROOT=/workspace/.stack

USER root

# install haskell stack
RUN curl -sSL https://get.haskellstack.org/ | sh
