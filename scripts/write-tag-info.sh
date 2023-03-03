#!/usr/bin/env bash

# Create and clear out temporary file if it already exists
TMP_FILE=PROJECT_INFO.txt
touch $TMP_FILE
echo -n '' > $TMP_FILE

# Get Project info from maven
IMAGE_OWNER="cjenkscybercom-test-org/test-org-repository"
ORG_IMAGE_NAME="ghcr.io/cjenkscybercom-test-org/test-org-repository/test-image"
REPO_IMAGE_NAME="ghcr.io/test-org-repository/test-image"
IMAGE_TIMESTAMP=$(date '+%Y%m%d%H%M%S')

# Write vars to the temporary file
echo "IMAGE_TAG_ORG_LATEST=${ORG_IMAGE_NAME}:latest" >> $TMP_FILE
echo "IMAGE_TAG_ORG_TIMESTAMP=${ORG_IMAGE_NAME}:1.0.0-${IMAGE_TIMESTAMP}" >> $TMP_FILE
echo "IMAGE_TAG_REPO_LATEST=${REPO_IMAGE_NAME}:latest" >> $TMP_FILE
echo "IMAGE_TAG_REPO_TIMESTAMP=${REPO_IMAGE_NAME}:1.0.0-${IMAGE_TIMESTAMP}" >> $TMP_FILE