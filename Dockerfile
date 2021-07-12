#build
FROM node:10.4-alpine as build

#install dependancies
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python2 && ln -sf python2 /usr/bin/python
RUN python2 -m ensurepip
RUN pip2 install --no-cache --upgrade pip setuptools

#copy source code 
RUN mkdir -p . /app
COPY ./src /app

#npm
WORKDIR /app/api
RUN npm install
RUN npm run build
RUN npm run test

#runtime
FROM node:10.4-slim as production
RUN mkdir -p . /app
WORKDIR /app
COPY --from=build /app/api .
EXPOSE 10030
CMD ["node", "build/main.js"]