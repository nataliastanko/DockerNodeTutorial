# Specify a base image
FROM node:alpine

# container commands will be relative to this path
# if dir does not exist, it will be created automatically
WORKDIR /usr/app

# Install dependencies
COPY ./ ./
RUN npm install

# Default command
# all the parts of the command
CMD ["npm", "start"]
