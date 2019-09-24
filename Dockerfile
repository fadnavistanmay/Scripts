# Use an official rust as a parent image
FROM rust:1.37

# more setup and adding of tools ...
# COMMENT 1

# Set the working directory to /app
WORKDIR /

COPY ./Cargo.toml ./Cargo.lock ./
RUN mkdir src/
RUN echo "fn main() { }" > src/main.rs
RUN cargo build 
RUN rm ./target/debug/deps/cargo2junit*
RUN rm ./Cargo.*
#RUN cargo build --release

# Copy the current directory contents into the container at /app
ADD Cargo.* /
ADD src/* /src/

RUN time cargo build
#RUN cargo build --release