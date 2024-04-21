# Use a base image with Nginx to serve static files
FROM nginx:alpine

# Copy HTML, CSS, JS, and images to Nginx web server directory
COPY html /usr/share/nginx/html
COPY css /usr/share/nginx/html/css
COPY js /usr/share/nginx/html/js
COPY images /usr/share/nginx/html/images

# Expose port 8000
EXPOSE 8000

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the built frontend files into the container
COPY . .

# Command to start the web server
CMD ["nginx", "-g", "daemon off;"]
