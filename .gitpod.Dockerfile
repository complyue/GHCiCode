FROM gitpod/workspace-full:latest

USER gitpod

# or git will keep prompting
RUN git config --global pull.ff only

# ~/.ghcup and ~/.cabal as well as all stuff under user ${HOME} directory will,
# get lost across Gitpod workspace restarts,
# ghcup (along with GHC, cabal-install and els etc. under its management) and
# stack should be installed to /workspace/ so they are persisted as part of
# prebuilt workspace, and updatable without root priviledge, we add their
# `bin`s to PATH here
ENV PATH="/workspace/.local/bin:/workspace/.cabal/bin:/workspace/.ghcup/bin:${PATH}"

# And tell those tools about their alternative homes
ENV GHCUP_INSTALL_BASE_PREFIX=/workspace
ENV CABAL_DIR=/workspace/.cabal
ENV STACK_ROOT=/workspace/.stack
