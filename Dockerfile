# Use the official Node.js image as a base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install dependencies inside the container
RUN npm install

# Copy the rest of the application code (including app.js) into the container
COPY . .

# Expose the port that the application will run on (default for Node.js is often 3000)
EXPOSE 3000

# Command to run the app
CMD ["node", "app.js"]
