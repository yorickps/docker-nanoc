FROM ruby:alpine3.4
MAINTAINER Jo Vandeginste <Jo.Vandeginste@gmail.com>
RUN apk add --no-cache build-base git &&\
    rm -rf /var/cache/apk/*
COPY Gemfile .
RUN bundle install
CMD /usr/local/bundle/bin/nanoc
