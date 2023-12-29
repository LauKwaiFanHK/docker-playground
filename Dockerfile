FROM node:lts

# Create app directory
WORKDIR /usr/src/app

# Use wildcard to copy both package.json and package-lock.json
COPY package*.json ./

# Install app dependencies based on package-lock.json
# by removing any existing node_modules. This ensures the dependencies are installed with a clean state.
# node_modules is made read-only after installation. 
RUN npm ci

# Bundle app source
COPY . .

# set the command to be executed when running a container from an image.
CMD ["node", "sayHello.js"]