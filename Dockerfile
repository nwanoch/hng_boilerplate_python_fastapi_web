# Use an official Python runtime as the base image
FROM python:3.11.9-alpine

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV PYTHONPATH=/app
# Set the working directory in the container
WORKDIR /app

# Install system dependencies
RUN apk add --no-cache curl

# Copy the rest of the backend files
COPY . /app/
