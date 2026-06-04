FROM ubuntu:22.04

# Install common dev tools
RUN apt-get update && apt-get install -y \
    git \
    vim \
    curl \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Set up a working directory and a default shell
WORKDIR /workspace
ENV PS1="\u@dev-container:\w$ "

# Keep the container running
CMD ["/bin/bash"]