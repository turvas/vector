#!/bin/bash
docker buildx build --platform linux/arm64 --push -t registry.gitlab.com/akuu/backend/vector:0.30.0-no-jemalloc-arm64 .
