FROM rust:1.75-alpine3.18

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the dependencies
RUN apm install --no-modify --no-dev --with-build-tools

# Build and run the application
CMD ["cargo", "build", "--no-default-manifest"]