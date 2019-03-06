#!/bin/bash
set -e
set -o pipefail

URI=https://api.github.com
API_VERSION=v3
API_HEADER="Accept: application/vnd.github.${API_VERSION}+json; application/vnd.github.antiope-preview+json"
AUTH_HEADER="Authorization: token ${GITHUB_TOKEN}"

COMMENTS_URL=`jq -r .pull_request._links.comments.href sample.json`
echo "Posting comment..."
curl -sSL -H "${AUTH_HEADER}" -H "${API_HEADER}" -d '{ "body": "hello world" }' -H "Content-Type: application/json" -X POST "$COMMENTS_URL"
echo "Done"