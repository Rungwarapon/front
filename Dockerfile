FROM node:12-alpine 

WORKDIR /app
COPY package.json package.json
RUN npm install
COPY . .

EXPOSE 3001
CMD ["npm", "run", "production"]