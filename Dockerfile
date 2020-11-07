FROM node:14.15
EXPOSE 80

WORKDIR /usr/src/app

COPY . ./

RUN npm install
RUN npm install pm2 -g
RUN npm install typescript -g 
RUN npm install tslint -g
RUN npm run build

COPY ./dist .

CMD ["pm2-runtime","app.js"]