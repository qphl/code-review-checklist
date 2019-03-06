FROM alpine:latest
LABEL "com.github.actions.name"="pull-request-checklist"
LABEL "com.github.actions.description"="Add a checklist to the pull request which triggered the action."
LABEL "com.github.actions.icon"="check-square"
LABEL "com.github.actions.color"="yellow"
RUN apk add --no-cache \
    jq \
    curl \
    git
COPY "add-checklist.sh" /usr/bin/add-checklist
COPY "jqprogram.jq" /usr/bin/jqprogram.jq
COPY "postTemplate.json" /usr/bin/postTemplate.json
COPY "../checklist.md" /usr/bin/checklist.md

CMD ["sh", "/usr/bin/add-checklist"]
