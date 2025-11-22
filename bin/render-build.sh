#!/usr/bin/env bash
set -e

# Install gems
bundle install

# Precompile assets (optional for API-only apps)
# RAILS_ENV=production bundle exec rails assets:precompile

# Run database migrations
RAILS_ENV=production bundle exec rails db:migrate

chmod +x bin/render-build.sh
