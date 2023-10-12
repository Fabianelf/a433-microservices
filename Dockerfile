FROM node:14

WORKDIR /app
COPY . .
RUN yarn install --production
ENV NODE_ENV=production DB_HOST=item-db
RUN npm install --production --unsafe-perm && npm run build
CMD ["node", "src/index.js"]
EXPOSE 8080