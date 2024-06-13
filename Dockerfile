FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Install Yarn locally
RUN npm install yarn

# Install dependencies
RUN yarn install

# Copy the rest of the application files
COPY . .

# Expose port
EXPOSE 3000

# Command to run the application
CMD ["yarn", "start"]
