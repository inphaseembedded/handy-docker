FROM ubuntu:22.04

# Install required packages
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    gcc-arm-linux-gnueabihf \
    build-essential \
    libasound2-dev \
    make \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /workspace

# Default command (can be overridden)
CMD ["make"]

