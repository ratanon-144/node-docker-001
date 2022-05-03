FROM node:16
WORKDIR /usr/src/app
COPY package.json package*.json ./
##RUN npm install --only=production
RUN npm install bcrypt cookie-session ejs express express-validator mysql2 nodemon
##RUN npm install child_process
##RUN npm install @google-cloud/storage
COPY . .
CMD [ "npm", "start" ]