FROM node:8.11-slim

RUN mkdir -p /home/dev

COPY . /home/dev

CMD ["node", "/home/dev/server.js"]