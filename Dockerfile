FROM node:latest

RUN mkdir /practice

WORKDIR /practice

COPY *.json ./

RUN npm i

COPY . .

RUN npm run build --only=prod

EXPOSE 8080

CMD npm start




