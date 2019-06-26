# Use an official rust as a parent image
FROM rust:1.31

# more setup and adding of tools ...

# Set the working directory to /app
WORKDIR /

# Copy the current directory contents into the container at /app
ADD Cargo.* /
ADD src/* /src/

RUN cargo build

# RUN cargo build --release