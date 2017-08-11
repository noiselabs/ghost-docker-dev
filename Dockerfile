FROM ghost:latest

MAINTAINER Vítor Brandão <vitor@noiselabs.io>

ENV NPM_CONFIG_LOGLEVEL verbose
ENV NODE_ENV development

RUN apt-get update && apt-get install -y rsync sudo && rm -rf /var/lib/apt/lists/*

RUN npm install -g nodemon@latest

CMD ["nodemon", "current/index.js", "--watch", "content/themes"]
