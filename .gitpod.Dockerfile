FROM gitpod/workspace-postgres

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
RUN apt-get update && apt-get install -y \ 
  build-essential \ 
  nodejs

# Configure the main working directory
WORKDIR /usr/src/app

# Copies the main application to run install dependencies and rake files
COPY . .

# Installs gems listed in the Gemfile.lock
RUN bundle install

# Exposes the 3000 port to access it outside of the image
EXPOSE 3000

# Default command that runs when the container starts
CMD ["bundle exec rails server"]