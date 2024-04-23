# Use the official Node.js image as the base
FROM node:latest

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application code
COPY html ./html
COPY css ./css
COPY js ./js

# Create the dist directory
RUN mkdir dist

# Build the application
RUN npm run build

# Use Nginx to serve the static files
FROM nginx:latest

# Copy the built files from the previous stage
COPY --from=0 /app/dist /usr/share/nginx/html

# Expose port 5500 for incoming HTTP traffic
EXPOSE 5500

# Start Nginx and set the port to 5500
CMD ["nginx", "-g", "daemon off;", "-p", "5500"]