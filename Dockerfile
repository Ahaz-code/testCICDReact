FROM node:14-alpine

WORKDIR /app

COPY package.json yarn.lock ./

FROM node:14-alpine

# Install Yarn
RUN npm install -g yarn

# Set the working directory
WORKDIR /app

# Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

COPY . .

EXPOSE 3000

CMD ["yarn", "start"]