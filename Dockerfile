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

LABEL maintainer="Hiro <laciferin@gmail.com>"
