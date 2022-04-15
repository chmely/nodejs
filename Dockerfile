# base image prepared by the nodejs team
# alpine means the smalles possible without unncesessary extra contents
FROM node:10

# the nodejs application in this container will use two environment variables
# the values specified here are the defaults
# the values can be overwritten when running the container by using the -e PORT=<value> argument of the run command
ENV  PORT=8088
ENV  LGC_ENV=dev

# we need to copy the angular app package.json and index.js files into the container
COPY ./ ./

# install dependencies using node package manager
RUN  npm install

# define startup command
CMD  ["npm", "start"]