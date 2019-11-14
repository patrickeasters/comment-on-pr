FROM ruby:2.6.0

LABEL "com.github.actions.name"="Comment on PR"
LABEL "com.github.actions.description"="Leaves a comment on a PR during a pull_request event"
LABEL "com.github.actions.repository"="https://github.com/patrickeasters/comment-on-pr"
LABEL "com.github.actions.maintainer"="Patrick Easters <patrick@patrickeasters.com>"
LABEL "com.github.actions.icon"="message-square"
LABEL "com.github.actions.color"="blue"

RUN gem install octokit

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
