# Base image
FROM node:alpine

#Work Directory
WORKDIR '/app'

# Copy Files 
COPY package.json .

# Dependencies
RUN npm install

COPY . .

EXPOSE 6379

#Default Command
CMD ["node","index"]