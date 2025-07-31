# Dockerfile
FROM node:18-alpine
WORKDIR /app
RUN npm install -g npm && npm cache clean --force
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD ["npm", "run", "start"]
