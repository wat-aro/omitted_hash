FROM ruby:3.1.0-preview1-bullseye

ENV APP_HOME=/usr/src/app \
    BUNDLE_JOBS=16

WORKDIR $APP_HOME
