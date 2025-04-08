#!/bin/bash
docker buildx build --platform linux/arm64 --push -t registry.gitlab.com/akuu/backend/vector:0.28.1-no-jemalloc-arm64 .
