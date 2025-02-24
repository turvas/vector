FROM rust:1.70-alpine AS builder
# Install build dependencies for OpenSSL and Vector
RUN apk add --no-cache \
    musl-dev \
    perl \
    pkgconf \
    gcc \
    make \
    linux-headers \
    protobuf \
    git
WORKDIR /vector
COPY . .
RUN cargo build --release --no-default-features
FROM alpine:latest
RUN apk add --no-cache libgcc
COPY --from=builder /vector/target/release/vector /usr/local/bin/vector
CMD ["vector"]
