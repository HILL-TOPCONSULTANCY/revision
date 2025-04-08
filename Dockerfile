# Use the official Node.js image
FROM node:18

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy application files
COPY . .

# Ensure logs directory exists inside the container
RUN mkdir -p /usr/src/app/logs

# Default background color (can be overridden at runtime)
ENV COLOR=red

# Expose the application port
EXPOSE 8080

# Start the application
CMD ["node", "app.js"]
