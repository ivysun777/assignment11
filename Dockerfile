# pull official base image
FROM node:18.16.0-alpine

# set working directory
WORKDIR /sun_qian_site

# add `/sun_qian_site/node_modules/.bin` to $PATH
ENV PATH /sun_qian_site/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent
RUN npm install react-scripts@5.0.1 -g --silent

# add app
COPY . ./

# start app
CMD ["npm", "start"]