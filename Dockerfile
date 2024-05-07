# Use the latest Ubuntu LTS release as the base image
FROM ubuntu:20.04

# Set the environment variables to avoid user interaction during installation
ENV DEBIAN_FRONTEND=noninteractive \
    TZ=UTC

# Update packages and install necessary dependencies
RUN apt-get update && apt-get install -y \
    software-properties-common \
    curl \
    wget \
    git \
    unzip \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Additional setup commands if needed
# For example, you can install Node.js:
# RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
# RUN apt-get install -y nodejs

# Set the working directory inside the container
WORKDIR /app

# Copy your application files into the container (if needed)
# COPY . /app

# Start your application or any other services
CMD ["/bin/bash"]
