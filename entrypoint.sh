#!/bin/sh -l

echo "$GITHUB_EVENT_NAME"


# /usr/bin/docker run 
# --name be76dbe975b94370fb40b0a892920e3010be57_95bbe2 
# --label be76db 
# --workdir /github/workspace 
# --rm 
# -e GITHUB_TOKEN 
# -e INPUT_WHO-TO-GREET 
# -e HOME 
# -e GITHUB_JOB 
# -e GITHUB_REF 
# -e GITHUB_SHA 
# -e GITHUB_REPOSITORY 
# -e GITHUB_REPOSITORY_OWNER 
# -e GITHUB_RUN_ID 
# -e GITHUB_RUN_NUMBER 
# -e GITHUB_ACTOR 
# -e GITHUB_WORKFLOW 
# -e GITHUB_HEAD_REF 
# -e GITHUB_BASE_REF 
# -e GITHUB_EVENT_NAME 
# -e GITHUB_URL 
# -e GITHUB_API_URL 
# -e GITHUB_GRAPHQL_URL 
# -e GITHUB_WORKSPACE 
# -e GITHUB_ACTION 
# -e GITHUB_EVENT_PATH 
# -e RUNNER_OS 
# -e RUNNER_TOOL_CACHE 
# -e RUNNER_TEMP 
# -e RUNNER_WORKSPACE 
# -e ACTIONS_RUNTIME_URL 
# -e ACTIONS_RUNTIME_TOKEN 
# -e ACTIONS_CACHE_URL 
# -e GITHUB_ACTIONS=true 
# -e CI=true 
# -v "/var/run/docker.sock":"/var/run/docker.sock" 
# -v "/home/runner/work/_temp/_github_home":"/github/home" 
# -v "/home/runner/work/_temp/_github_workflow":"/github/workflow" 
# -v "/home/runner/work/test/test":"/github/workspace" be76db:e975b94370fb40b0a892920e3010be57  "World"
