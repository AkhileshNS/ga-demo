FROM node:14.4.0-alpine3.10

ENV HEROKU_CLI_VERSION '7.42.1'
RUN npm i -g heroku@${HEROKU_CLI_VERSION}

RUN apk update && apk --no-cache add git

ADD index.js index.js

CMD [ "node", "index.js" ]