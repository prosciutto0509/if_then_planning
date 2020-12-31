FROM ruby:2.6.5
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs

# Rails App
RUN mkdir /if_then_planning
WORKDIR /if_then_planning
ADD Gemfile /if_then_planning/Gemfile
ADD Gemfile.lock /if_then_planning/Gemfile.lock
RUN gem install bundler 
RUN bundle install
ADD . /if_then_planning
RUN mkdir -p tmp/sockets

# Expose volumes to frontend


# Start Server
# TODO: environment
CMD bundle exec puma