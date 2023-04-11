# Especifying image
FROM node:alpine

# Principal directory for your express js app
WORKDIR /lab-04

# Installing express-generator
RUN npm install -g express-generator

# Creating express js app
RUN express --view=ejs testing-express

# Redirecting workdir to 'testing-express'
WORKDIR /lab-04/testing-express

# Run express js app at port 9000
EXPOSE 9000

RUN npm install 

CMD [ "npm", "start" ]
