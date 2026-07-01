FROM node:20 (last pushed19 hours ago)

RUN corepack enable && corepack prepare yarn@stable --activate

WORKDIR /usr/src/app

COPY package.json yarn.lock .yarnrc.yml ./

RUN yarn install --immutable

COPY . .

CMD ["yarn", "start"]