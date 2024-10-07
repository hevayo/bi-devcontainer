# Use a lightweight base image
FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    && apt-get clean && rm -rf /var/lib/apt/lists/*


