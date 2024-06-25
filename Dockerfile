# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Install Git (to fetch code from GitHub)
RUN apt-get update && apt-get install -y git

# Clone the repository from GitHub
RUN git clone https://github.com/geetha1234567890/Node-js- .

# Install dependencies
RUN npm install --only=production

# Expose the port on which the application will run
EXPOSE 3000

# Command to run the application
CMD ["node", "main.js"]
