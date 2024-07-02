FROM node:lts

ARG TEST
ENV TEST=${TEST}

WORKDIR /app

COPY . .

RUN npm ci

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the application
CMD ["node", "index.js"]
