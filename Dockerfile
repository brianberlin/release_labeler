  
FROM alpine:3.10.3

LABEL "com.github.actions.name"="Release Labeler"
LABEL "com.github.actions.description"="Auto-label pull requests and issues with the current release label."
LABEL "com.github.actions.icon"="tag"
LABEL "com.github.actions.color"="gray-dark"

LABEL version="1.0.0"
LABEL repository="http://github.com/brianberlin/release-labeler"
LABEL homepage="http://github.com/brianberlin/release-labeler"
LABEL maintainer="Brian Berlin <bri@nberl.in>"

RUN apk add --no-cache bash curl jq

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]