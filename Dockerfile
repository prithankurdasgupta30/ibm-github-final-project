# Use an official Python runtime as the base image
FROM python:3.11-slim

# Metadata
LABEL maintainer="Your Name"
LABEL description="Accounts REST API Service"

# Prevent Python from writing pyc files
ENV PYTHONDONTWRITEBYTECODE=1

# Enable unbuffered logging
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        gcc \
        build-essential && \
    rm -rf /var/lib/apt/lists/*

# Copy requirements first
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy the application source
COPY . .

# Create a non-root user
RUN useradd --create-home --shell /bin/bash appuser && \
    chown -R appuser:appuser /app

# Switch to the non-root user
USER appuser

# Expose the application port
EXPOSE 8080

# Run the service
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "service:app"]
