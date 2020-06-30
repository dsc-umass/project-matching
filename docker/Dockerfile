FROM ruby:2.7.0

# Installs dependencies to run Rails on the ruby:2.7.0 image
RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs \
  postgresql-client

# Configure the main working directory
WORKDIR /usr/src/app

# Copies the main application to run install dependencies and rake files
COPY . .

# Yarn installation 
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install -y yarn
RUN yarn install

# Installs gems listed in the Gemfile.lock & Package.json
RUN bundle install

# Exposes the 3000 port to access it outside of the image
EXPOSE 3000

# Default command that runs when the container starts
CMD ["bash", "docker/docker_set_up.sh"]