# Use official Node image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy remaining application code
COPY . .

# Set environment variable so React listens on all interfaces
ENV HOST=0.0.0.0

# Expose port
EXPOSE 3000

# Start React app
CMD ["npm", "start"]