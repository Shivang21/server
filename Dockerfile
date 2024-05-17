# Use the official Node.js image as base
FROM node:14

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json to work directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all the application files to the work directory
COPY . .

# Expose port 3000 to allow communication to the Express server
EXPOSE 3000

# Start the Express server
CMD ["node", "server.js"]