#!/bin/sh -l

if [[ -z "$GITHUB_TOKEN" ]]; then
  echo "Set the GITHUB_TOKEN env variable."
  exit 1
fi

if [[ -z "$GITHUB_REPOSITORY" ]]; then
  echo "Set the GITHUB_REPOSITORY env variable."
  exit 1
fi

if [[ -z "$GITHUB_EVENT_PATH" ]]; then
  echo "Set the GITHUB_EVENT_PATH env variable."
  exit 1
fi

URI="https://api.github.com"
API_HEADER="Accept: application/vnd.github.v3+json"
AUTH_HEADER="Authorization: token ${GITHUB_TOKEN}"

cat "$GITHUB_EVENT_PATH"
number=$(jq --raw-output .pull_request.number "$GITHUB_EVENT_PATH")

echo "curl -sSL -H \"${AUTH_HEADER}\" -H \"${API_HEADER}\" \"${URI}/repos/${GITHUB_REPOSITORY}/pulls/${number}"

body=$(curl -sSL -H "${AUTH_HEADER}" -H "${API_HEADER}" "${URI}/repos/${GITHUB_REPOSITORY}/pulls/${number}")

echo "$body"

# HOME: /github/home
# GITHUB_JOB: releaseLabeler
# GITHUB_REF: refs/pull/8/merge
# GITHUB_SHA: e91bb735c3094240a19e72b5b0f16cd8f3afc266
# GITHUB_REPOSITORY: brianberlin/test
# GITHUB_REPOSITORY_OWNER: brianberlin
# GITHUB_RUN_ID: 111683330
# GITHUB_RUN_NUMBER: 5
# GITHUB_ACTOR: brianberlin
# GITHUB_WORKFLOW: Labeler
# GITHUB_HEAD_REF: brianberlin-patch-5
# GITHUB_BASE_REF: develop
# GITHUB_EVENT_NAME: pull_request
# GITHUB_URL: https://github.com
# GITHUB_API_URL: https://api.github.com
# GITHUB_GRAPHQL_URL: https://api.github.com/graphql
# GITHUB_WORKSPACE: /github/workspace
# GITHUB_ACTION: brianberlinrelease_labeler
# GITHUB_EVENT_PATH: /github/workflow/event.json
# RUNNER_OS: Linux
# RUNNER_TOOL_CACHE: /opt/hostedtoolcache
# RUNNER_TEMP: /home/runner/work/_temp
# RUNNER_WORKSPACE: /home/runner/work/test
# ACTIONS_RUNTIME_URL: https://pipelines.actions.githubusercontent.com/YHn2suXFazhSXglkbf75IPV6sYAzKUid1p42KJSK19gzcEA893/
# ACTIONS_RUNTIME_TOKEN: ***
# ACTIONS_CACHE_URL: https://artifactcache.actions.githubusercontent.com/YHn2suXFazhSXglkbf75IPV6sYAzKUid1p42KJSK19gzcEA893/
# GITHUB_ACTIONS: true
# CI: true