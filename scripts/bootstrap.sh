#!/bin/bash -e

if [[ -z $GITHUB_TOKEN ]]; then
  echo "Must provide GitHub access token in GITHUB_TOKEN env var"
  exit 1
fi

flux check --pre

flux bootstrap github \
  --owner=RichardDorian \
  --repository=cluster-mcdo \
  --branch=main \
  --path=./cluster \
  --personal