FROM ruby:2.3

RUN mkdir -p /data/app
WORKDIR /data/app

ENV GEM_HOME /data/gems
ENV BUNDLE_PATH /data/gems
ENV PATH /data/gems/bin:$PATH

COPY . ./
