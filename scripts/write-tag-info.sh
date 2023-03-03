#!/usr/bin/env bash

# Create and clear out temporary file if it already exists
TMP_FILE=PROJECT_INFO.txt
touch $TMP_FILE
echo -n '' > $TMP_FILE

# Get Project info from maven
IMAGE_OWNER="cjenkscybercom-test-org/test-org-repository"
IMAGE_NAME="ghcr.io/${IMAGE_OWNER}/test-image"
IMAGE_TIMESTAMP=$(date '+%Y%m%d%H%M%S')

# Write vars to the temporary file
echo "IMAGE_TAG_LATEST=${IMAGE_NAME}:latest" >> $TMP_FILE
echo "IMAGE_TAG_TIMESTAMP=${IMAGE_NAME}:1.0.0-${IMAGE_TIMESTAMP}" >> $TMP_FILE