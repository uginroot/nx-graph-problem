FROM node:18.15.0-alpine3.17

WORKDIR /app
COPY . /app

RUN yarn install
RUN yarn nx run --verbose --batch @nx-graph-problem/parent:build
RUN yarn nx graph --verbose --focus @nx-graph-problem/parent --file ./graph.json

ENTRYPOINT ["top", "-b"]
