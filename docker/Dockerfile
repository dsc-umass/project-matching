FROM ruby:2.7.0

# Installs dependencies to run Rails on the ruby:2.7.0 image
RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs \
  postgresql-client \
  yarn

# Configure the main working directory
WORKDIR /usr/src/app

# Copies the main application to run install dependencies and rake files
COPY . .

# Installs gems listed in the Gemfile.lock & Package.json
RUN bundle install
RUN yarn install

# Database Setup
RUN bundle exec rake db:create 
RUN bundle exec rake db:migrate 
RUN bundle exec rake db:setup

# Exposes the 3000 port to access it outside of the image
EXPOSE 3000

# Default command that runs when the container starts
CMD ["bundle exec rails server -b 0.0.0.0"]