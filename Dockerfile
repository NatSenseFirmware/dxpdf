FROM rust:1.94-slim

# 安裝打包 deb 必要的系統套件
RUN apt-get update && apt-get install -y \
    dpkg-dev \
    pkg-config \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

# 安裝 cargo-deb 工具
RUN cargo install cargo-deb

# 設定容器內的工作目錄
WORKDIR /volume
