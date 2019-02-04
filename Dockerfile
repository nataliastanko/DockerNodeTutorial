# Specify a base image
FROM node:alpine

# Install dependencies
COPY ./ ./
RUN npm install

# Default command
# all the parts of the command
CMD ["npm", "start"]
