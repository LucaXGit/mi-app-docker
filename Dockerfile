FROM node:20

RUN corepack enable && corepack prepare yarn@1.22.22 --activate

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

EXPOSE 3000

CMD ["yarn", "start"]