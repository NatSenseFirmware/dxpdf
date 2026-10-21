FROM rust:1.95-slim

RUN apt-get update && apt-get install -y \
    dpkg-dev \
    pkg-config \
    libssl-dev \
    python3 \
    curl \
    ca-certificates \
    git \
    build-essential \
    clang \
    libclang-dev \
    ninja-build \
    libfontconfig1-dev \
    libfreetype-dev \
    && rm -rf /var/lib/apt/lists/*

RUN cargo install cargo-deb

WORKDIR /volume