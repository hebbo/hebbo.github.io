FROM alpine:3.2
MAINTAINER Angel Pena Ruiz  <angel_pr1984@hotmail.com>

ENV BUILD_PACKAGES bash curl-dev ruby-dev build-base
ENV RUBY_PACKAGES ruby ruby-io-console ruby-bundler

# Update and install all of the required packages.
# At the end, remove the apk cache
RUN apk update && \
    apk upgrade && \
    apk add $BUILD_PACKAGES && \
    apk add $RUBY_PACKAGES && \
    rm -rf /var/cache/apk/*

RUN mkdir /usr/src/myapp
WORKDIR /usr/src/myapp

COPY Gemfile /usr/src/myapp/
COPY Gemfile.lock /usr/src/myapp/
RUN bundle install
