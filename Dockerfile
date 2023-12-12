# Use the official Ruby image.
# The 'slim' variant is chosen to reduce the image size by excluding things we don't need.
FROM ruby:3.1-slim

# Set the working directory for any subsequent ADD, COPY, CMD, ENTRYPOINT, or RUN instructions.
WORKDIR /usr/src/app

# Installing the dependencies needed for native extensions
RUN apt-get update \
  && apt-get install -y --no-install-recommends build-essential libpq-dev git \
  && rm -rf /var/lib/apt/lists/*  # Cleanup to reduce image size

# Optionally add a non-root user to run our app
# RUN adduser --disabled-password --gecos '' myuser
# USER myuser

# Copy the Gemfile and Gemfile.lock into the image.
# These should contain any RubyGems your app needs.
COPY Gemfile Gemfile.lock ./

# Install bundler and gems listed in Gemfile.
# We use --system flag to ensure the binstubs are available in PATH.
RUN gem install bundler && bundle install --system

# Command to run when the container starts.
# 'app/main.rb' should be the Ruby script that you want to run.
CMD ["ruby", "app/main.rb"]