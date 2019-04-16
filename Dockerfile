# Base image
FROM node:alpine

#Work Directory
WORKDIR '/app'

# Copy Files 
COPY ./package.json ./

# Dependencies
RUN npm install

COPY ./ ./

#Default Command
CMD ["npm","start"]
