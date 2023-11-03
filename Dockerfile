# Build stage
FROM node:20 AS builder
WORKDIR /app

#COPY package*.json pnpm-lock.yaml ./

COPY . .

RUN npm install -g pnpm
RUN pnpm install


# Deploy stage
FROM node:20-alpine


ENV NODE_ENV="production"
ENV MODE="prod"

WORKDIR /app

EXPOSE $PORT

COPY --from=builder /app ./

CMD ["sh", "-c", "npm run test && npm run test:e2e"]

ENTRYPOINT ["npm", "run", "start:prod"]

LABEL maintainer="Hiro <laciferin@gmail.com>"
