FROM ruby:2.6.5

RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       nodejs

RUN mkdir /app

WORKDIR /app

ADD ./Gemfile Gemfile
ADD ./Gemfile.lock Gemfile.lock

RUN bundle install
ADD . .
