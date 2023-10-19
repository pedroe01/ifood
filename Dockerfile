FROM ruby:3.2.2-bullseye as base

RUN apt-get update -qq && apt-get install -y build-essential apt-utils libpq-dev npm vim nano

ENV NODE_VERSION=14.17.3
ENV NVM_DIR /tmp/nvm
WORKDIR $NVM_DIR

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash \
  && . $NVM_DIR/nvm.sh \
  && nvm install $NODE_VERSION \
  && nvm alias default $NODE_VERSION \
  && nvm use default

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/v$NODE_VERSION/bin:$PATH

WORKDIR /docker/app

RUN gem install bundler

RUN npm install -g yarn

COPY Gemfile* ./

RUN bundle install

ADD . /docker/app
