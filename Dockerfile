FROM ruby:2.6.10-alpine3.15
RUN apk update && apk add nodejs mysql-client mysql-dev libpq-dev bash
# Required for nokogiri to run https://github.com/gliderlabs/docker-alpine/issues/53#issuecomment-532076173
RUN apk add --no-cache build-base
RUN gem install nokogiri -v 1.13.10
WORKDIR /app
COPY Gemfile* ./
RUN bundle install
COPY . .
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
