#!/bin/bash
set -e

yarn install

bundle install
bundle exec rake db:create
bundle exec rake db:migrate

rm -f /app/tmp/pids/server.pid

bundle exec rails server -b 0.0.0.0

exec "$@"