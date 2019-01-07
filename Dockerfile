FROM ruby:2.6.0

RUN apt-get update -yqq \
  && apt-get install -y nodejs \
    mysql-client \
    build-essential \
    libpq-dev


RUN gem install nokogiri

WORKDIR /app
COPY Gemfile* ./
RUN bundle install
COPY . .
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

