# the official node.js base image
FROM node:18-alpine

# Setup the working directory 
WORKDIR /

# copy the package.json & installation depencies
COPY package*.json ./

# copy all the app files
COPY . .

# expose the port
EXPOSE 3000

# start the application
CMD ["node", "app.js"]


