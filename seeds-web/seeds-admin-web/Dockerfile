FROM nginx:1.23.0-alpine AS base

# FROM node:18 AS builder
FROM node:18-alpine AS builder 
# RUN apt-get update && apt-get install -y libc6-dev git
RUN apk add --no-cache libc6-compat git
WORKDIR /app
COPY . .
# RUN npm install -g @magento/pwa-buildpack @magento/pwa-buildpack-cli &&\
RUN yarn &&\
    npm run build:uat

FROM nginx:latest AS runner
WORKDIR /seeds/web/seeds-admin-web
ENV PORT 8000

COPY --from=builder /app/dist ./
# COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 8000
