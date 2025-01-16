# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container
COPY . .

# Install app dependencies
RUN npm install

# Expose port 3000 for the app
EXPOSE 3000

# Run the app
CMD ["node", "app.js"]
