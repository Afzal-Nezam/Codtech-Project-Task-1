# "We use the 18-alpine image as the foundation for our Node.js application." 
FROM node:18-alpine

# Preparing the required environment settings:
ENV DOMAIN="http://localhost:3000" \
PORT=3000 \
STATIC_DIR="./client" \
PUBLISHABLE_KEY="pk_test_51L5AsSSCC8JVWfvgEtfJkzHMTh7Z5PLY5m1yhR379sJgwAVZEe13NaiG33wsHSyHnPJMjTNOosiPk6AeMI8q0ims0049IKffiu" \
APP_TOKEN = "sk_test_51L5AsSSCC8JVWfvgxpyZvQyBRRkHmGBkdyIa94vPD3Zs71qbHGrnSPlrJOIWiR74fbcn1A85yESCFnrrp3aX0Oz900JaunHrhe"


WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
