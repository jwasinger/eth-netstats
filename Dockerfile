FROM node:8 AS nodebuild

RUN node --version
RUN npm --version

COPY package*.json ./

COPY . .

RUN npm install

RUN npm install -g grunt-cli

RUN grunt

EXPOSE 3000

# ENV WS_SECRET

CMD ["node", "bin/www"]
