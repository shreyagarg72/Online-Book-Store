# Use the official Node.js image with Alpine Linux as the base image
FROM node:alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port on which your Node.js application will run (if applicable)
EXPOSE 5500

# Command to run the Node.js application
CMD ["npm", "start"]
