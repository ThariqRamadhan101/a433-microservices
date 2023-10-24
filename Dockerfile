# Use the official Node.js 14 image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /src

# Copy package.json and package-lock.json to the container's working directory
COPY package*.json ./

# Copy the application's main JavaScript file to the container
COPY index.js ./

# Install application dependencies using npm
RUN npm install

# Set the environment variable PORT to 3001
ENV PORT=3001

# Expose the port specified by the PORT environment variable
EXPOSE $PORT

# Copy the "wait-for-it.sh" script to the container
COPY wait-for-it.sh ./

# Make the "wait-for-it.sh" script executable
RUN chmod +x wait-for-it.sh

# Define the command to run when the container starts
CMD ["./wait-for-it.sh", "my-rabbitmq:5672", "--timeout=30", "--", "node", "index.js"]
