FROM rust:1.75-alpine3.18

# Set the working directory to /app
WORKDIR /app

# Install the dependencies
RUN apk upgrade

# Build and run the application
CMD ["cargo", "build", "--no-default-manifest"]