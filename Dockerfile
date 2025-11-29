FROM node:19-alpine AS base
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
FROM base AS FINAL
RUN npm install --prod
COPY . .
CMD ["node", "index.js"]
