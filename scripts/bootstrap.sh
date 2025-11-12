#!/bin/bash -e

if [[ -z $GITLAB_TOKEN ]]; then
  echo "Please provide GITLAB_TOKEN env variable"
  exit 1
fi

flux bootstrap gitlab \
  --token-auth \
  --hostname=gitlab.umontpellier.polytech.fr \
  --owner=dorian.richard \
  --repository=cluster-mcdo \
  --branch=main \
  --path=clusters/production \
  --personal