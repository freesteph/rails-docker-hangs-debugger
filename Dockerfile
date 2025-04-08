FROM ruby:3.4.1-slim

RUN apt-get update && apt-get upgrade -y && apt-get install --no-install-recommends -y build-essential

WORKDIR /bundle
COPY Gemfile Gemfile.lock ./
RUN bundle install

WORKDIR /app

COPY . .

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
