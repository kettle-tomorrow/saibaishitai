FROM ruby:3.0.1

WORKDIR /app

# Using Node.js v14.x(LTS)
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -

RUN apt-get update && apt-get install -y \
      git \
      nodejs

RUN npm install -g yarn

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app

RUN SECRET_KEY_BASE=dummy bundle exec rails assets:precompile

# FROM ruby:3.0.1

# WORKDIR /app

# # Using Node.js v14.x(LTS)
# RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -

# # Add packages
# RUN apt-get update && apt-get install -y \
#       git \
#       nodejs \
#       vim

# # Add yarnpkg for assets:precompile
# RUN npm install -g yarn
