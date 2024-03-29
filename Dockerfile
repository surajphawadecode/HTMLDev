# Use an official lightweight Node image
FROM node:14-alpine

# Set the working directory
WORKDIR /usr/src/app

# Install dependencies
RUN npm install

# Copy the project files to the working directory
COPY . .

# Expose port 3000
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
