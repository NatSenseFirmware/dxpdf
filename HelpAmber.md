docker build -f Dockerfile.debian -t rust-deb-builder .
docker run --rm -v "$(pwd)":/volume rust-deb-builder cargo deb
