FROM ruby:2.2

RUN mkdir -p /opt/results
WORKDIR /opt/results

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install --jobs 20 --retry 5

# Copy the main application.
COPY . ./

CMD rake ci:setup:rspec test