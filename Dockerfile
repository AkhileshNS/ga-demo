FROM node:14.4.0-alpine3.10

LABEL "com.github.actions.name"="ga-docker-testing-action"	
LABEL "com.github.actions.description"="An action to perform tests on GitHub Actions"	
LABEL "com.github.actions.icon"="chevrons-right"	
LABEL "com.github.actions.color"="gray-dark"	

LABEL "repository"="http://github.com/akhileshns/ga-demo"	

ENV HEROKU_CLI_VERSION '7.42.1'
RUN npm i -g heroku@${HEROKU_CLI_VERSION}

RUN apk update && apk --no-cache add git

ADD entrypoint.js /entrypoint.js

CMD [ "node", "entrypoint.js" ]