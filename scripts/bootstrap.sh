#!/bin/bash -e

if [[ -z $GITHUB_TOKEN ]]; then
  echo "Please provide GITHUB_TOKEN env variable"
  exit 1
fi

flux check --pre

flux bootstrap github \
  --token-auth \
  --owner=richarddorian \
  --repository=cluster-mcdo \
  --branch=main \
  --path=clusters/production \
  --personal