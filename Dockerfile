FROM ruby:2

LABEL "repository"="https://github.com/reidBoudreau/shopify-theme-check"
LABEL "homepage"="https://github.com/actions"

RUN gem install theme-check

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]