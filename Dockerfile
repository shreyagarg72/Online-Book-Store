# Stage 1: Build stage
FROM nginx:alpine AS builder

# Copy the static files to the Nginx HTML directory
COPY . /usr/share/nginx/html

# Stage 2: Production stage
FROM nginx:alpine

# Expose port 80 for HTTP traffic
EXPOSE 5500
