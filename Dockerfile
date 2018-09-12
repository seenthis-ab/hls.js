FROM node:alpine

RUN apk update
RUN apk add git
RUN apk add bash
RUN apk add bash-completion
RUN rm -rf /usr/portage/distfiles/*

RUN mkdir /node_modules
ADD package.json /
ADD package-lock.json /
RUN npm install

RUN mkdir /code
COPY . /code
WORKDIR /code
CMD ["sh", "-c", "ln -s -f -T /node_modules /code/node_modules && /bin/bash"]
