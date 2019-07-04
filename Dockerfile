# Specify a base image
FROM node:alpine

# container commands will be relative to this path
# if dir does not exist, it will be created automatically
WORKDIR /usr/app

# Minimizing cache busting and unnecessary rebuilds:
# Install dependencies
# Minimizing rebuilds, it will not invalidate the cache
# npm dependencies first
COPY ./package.json ./
RUN npm install

# copy the rest of the project files
COPY ./ ./

# Default command
# all the parts of the command
CMD ["npm", "start"]
