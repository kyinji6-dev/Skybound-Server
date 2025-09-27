# Use Node.js base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install Dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# Expose port
EXPOSE 8080

# Start the server
CMD ["node", "index.js"]