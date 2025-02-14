FROM node:14.17-alpine

USER root

RUN apk add --update --no-cache bash

RUN yarn global add --prod --no-lockfile laravel-echo-server \
	&& yarn cache clean
	
WORKDIR /app

CMD ["laravel-echo-server", "start"]
