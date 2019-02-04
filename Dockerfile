FROM node:slim
RUN npm install bwip-js
CMD node /node_modules/bwip-js/server.js