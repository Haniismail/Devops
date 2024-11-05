FROM node:lts-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 5001
ENV MONGO_URI=mongodb+srv://task-manager:1234Five@task-manager.tllrg2b.mongodb.net/?retryWrites=true&w=majority
CMD ["npm", "start"]