FROM ruby:2.3

RUN mkdir -p /data/app
WORKDIR /data/app

COPY Gemfile ./
COPY Gemfile.lock ./
RUN bundle install

COPY . ./
