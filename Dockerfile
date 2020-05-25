FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY server/package*.json server/
COPY app/package*.json app/

RUN cd app && npm install && cd ../server && npm install

# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .
RUN cd server && npm run build:app

WORKDIR /usr/src/app/server
CMD [ "npm", "start" ]
EXPOSE 3000
