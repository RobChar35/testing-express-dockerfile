# Especifying image
FROM node:alpine

# Principal directory for your express js app
WORKDIR /lab-04

# Installing express-generator
RUN npm install -g express-generator

# Creating express js app and redirecting
RUN express --view=ejs testing-express

CMD "cd /testing-express"  

# Run express js app at port 9000
EXPOSE 9000
RUN npm install && npm start
