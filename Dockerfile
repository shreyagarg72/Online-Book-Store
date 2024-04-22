# Use a base image with Nginx and Alpine Linux
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the index.html file to the Nginx web server directory
COPY index.html .

# Expose port 5500
EXPOSE 5500

# Command to start the web server
CMD ["nginx", "-g", "daemon off;"]

