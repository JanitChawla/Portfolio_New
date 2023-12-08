FROM node:18-alpine
WORKDIR /app
COPY package.json /app/
COPY src/ /app/src
COPY public/ /app/public
RUN npm install --legacy-peer-deps
CMD ["npm", "start"]