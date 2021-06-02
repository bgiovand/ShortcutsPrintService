FROM node:alpine
ENV NODE_ENV=production
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production
COPY . .
VOLUME ["/app/assets", "/app/routes"]
EXPOSE 3344
CMD ["node", "server.js"]
