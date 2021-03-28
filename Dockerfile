FROM node:10-alpine

# ENV USER root
# ENV WORK_DIR_PATH /usr/src/app
# RUN mkdir -p $WORK_DIR_PATH && chown -R $USER:$USER $WORK_DIR_PATH
# WORKDIR $WORK_DIR_PATH

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080
# Start app
# CMD [ "npm", "run", "server" ]
CMD ["node", "serveronly"]
# CMD ["echo", "hi Bryce"]
