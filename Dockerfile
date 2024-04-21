# Use a base image with Nginx to serve static files
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy HTML, CSS, JS, and images to Nginx web server directory
COPY html /usr/share/nginx/html
COPY css /usr/share/nginx/html/css
COPY js /usr/share/nginx/html/js
COPY images /usr/share/nginx/html/images

# Copy the default Nginx configuration file to serve your application on port 5500
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 5500
EXPOSE 5500

# Command to start the web server
CMD ["nginx", "-g", "daemon off;"]
