# syntax=docker/dockerfile:1

FROM node:10
WORKDIR /app
COPY package.json /app
ENV SECRET_WORD=TwelveFactor
RUN npm install 
COPY . /app
CMD ["node", "."]
