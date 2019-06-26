# Use an official Python runtime as a parent image
FROM rust:1.31

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app