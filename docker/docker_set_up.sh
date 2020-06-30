rm tmp/pids/server.pid
yarn install --check-files
bundle exec rails server -b 0.0.0.0
