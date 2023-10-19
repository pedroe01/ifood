FROM ruby:3.2.2-bullseye as base

RUN apt-get update -qq && apt-get install -y build-essential apt-utils libpq-dev nodejs npm vim nano

WORKDIR /docker/app

RUN gem install bundler

RUN npm install -g yarn

COPY Gemfile* ./

RUN bundle install

ADD . /docker/app
