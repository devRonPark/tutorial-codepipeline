FROM node:12-alpine
RUN mkdir -p /var/app
WORKDIR /var/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
ENV PORT=3000
EXPOSE 3000
CMD ["npm", "start"]