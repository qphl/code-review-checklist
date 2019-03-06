#!/bin/bash
set -e
set -o pipefail

URI=https://api.github.com
API_VERSION=v3
API_HEADER="Accept: application/vnd.github.${API_VERSION}+json; application/vnd.github.antiope-preview+json"
AUTH_HEADER="Authorization: token ${GITHUB_TOKEN}"

COMMENTS_URL=`jq -r .pull_request._links.comments.href "$GITHUB_EVENT_PATH"`
echo "Building comment body..."
jq -R -s --argfile json /usr/bin/postTemplate.json -f /usr/bin/jqprogram.jq /usr/bin/checklist.md > ./commentBody.json 
cat ./commentBody.json
echo "Posting comment..."
curl -sSL -H "${AUTH_HEADER}" -H "${API_HEADER}" -d @commentBody.json -H "Content-Type: application/json" -X POST "$COMMENTS_URL"
echo "Done"