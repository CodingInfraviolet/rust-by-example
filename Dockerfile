FROM ruby:2.5.1

RUN apt-get update && apt-get install -y nodejs \
&& apt-get clean && rm -rf /var/lib/apt/lists/*

COPY ./Gemfile /usr/src/app/
WORKDIR /usr/src/app

RUN bundle install

EXPOSE 4567
