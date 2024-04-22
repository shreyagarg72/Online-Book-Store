# Use a lightweight web server as the base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy HTML, CSS, JavaScript, and images to the web server directory
COPY html/ .
COPY css/ css/
COPY js/ js/
COPY images/ images/

# Expose port 80 (default for HTTP)
EXPOSE 80

# Command to start the Nginx web server
CMD ["nginx", "-g", "daemon off;"]
