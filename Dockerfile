# Use official Node image
FROM node:18

# Create working directory
WORKDIR /app

# Copy package.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application files
COPY . .

# Expose application port
EXPOSE 3000

# Start application
CMD ["npm", "start"]