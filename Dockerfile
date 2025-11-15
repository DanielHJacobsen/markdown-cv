# Use an official Ruby image (Jekyll requires Ruby)
FROM ruby:3.3

# Install required dependencies
RUN apt-get update && \
    apt-get install -y build-essential nodejs && \
    rm -rf /var/lib/apt/lists/*

# Create and set working directory
WORKDIR /srv/jekyll

# Install Jekyll and Bundler
RUN gem install jekyll bundler

# Expose Jekyll's default port
EXPOSE 4000

# Default command to serve the site
CMD ["jekyll", "serve", "--host", "0.0.0.0"]
