#!/bin/sh

if [ -z "$MONDOO_AGENT_ACCOUNT" ]; then
  echo "The Mondoo service account token was not set in the GitHub Actions config. Cannot continue."
  exit 1
fi

mondoo scan -t $INPUT_SCAN_TYPE --path $INPUT_PATH