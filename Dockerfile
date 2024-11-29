# Use Node.js base image
FROM node:14

# Set working directory in the container
WORKDIR /usr/src/app

# Copy package.json to the working directory
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Expose port 80 for the app
EXPOSE 80

# Command to run the app
CMD ["npm", "start"]
