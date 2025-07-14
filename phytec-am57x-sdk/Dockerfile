FROM ubuntu:22.04

# Install required packages
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
		bsdmainutils \
		build-essential \
		chrpath \
		cpio \
		diffstat \
		file \
		g++-multilib \
		gawk \
		gcc-multilib \
		git-core \
		iputils-ping \
		libegl1-mesa \
		libgmp-dev \
		libmpc-dev \
		libncurses-dev \
		libsdl1.2-dev \
		libssl-dev \
		locales \
		lz4 \
		openssh-client \
		pylint \
		python2 \
		python3 \
		python3-distutils \
		python3-git \
		python3-jinja2 \
		python3-pexpect \
		python3-pip \
		rsync \
		socat \
		texinfo \
		tmux \
		unzip \
		bmap-tools \
		vim \
		wget \
		xterm \
		zstd
# Set locale to avoid locale warnings in Yocto builds
RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8

# Create a non-root user
ARG USERNAME=builder
ARG UID=1000
ARG GID=1000

RUN groupadd -g ${GID} ${USERNAME} && \
    useradd -m -u ${UID} -g ${GID} -s /bin/bash ${USERNAME} && \
    usermod -aG sudo ${USERNAME}

# Copy entrypoint script
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh && \
		chown builder:builder /usr/local/bin/entrypoint.sh


# Switch to non-root user
USER ${USERNAME}


# Set working directory
WORKDIR /workspace

# Set entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
