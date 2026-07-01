FROM node:20

RUN corepack enable && corepack prepare yarn@stable --activate

WORKDIR /usr/src/app

COPY package.json yarn.lock .yarnrc.yml ./

RUN yarn install --immutable

COPY . .

EXPOSE 3000

CMD ["yarn", "start"]