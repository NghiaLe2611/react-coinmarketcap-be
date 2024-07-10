FROM node:16-alpine as builder
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci
FROM builder AS final
COPY . .
EXPOSE 5002
CMD ["npm", "start"]
