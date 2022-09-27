FROM node:16-slim AS build

WORKDIR /usr/src/app
COPY . ./
RUN npm install -g npm@8.10.0
RUN npm config set registry https://registry.npmjs.org/

RUN npm ci -–production

EXPOSE 3000
CMD ["npm", "start"]