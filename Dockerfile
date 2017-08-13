# Based on https://nodejs.org/en/docs/guides/nodejs-docker-webapp/
# But using alpine instead

FROM mhart/alpine-node:6

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json .
# For npm@5 or later, copy package-lock.json as well
# COPY package.json package-lock.json .

RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]