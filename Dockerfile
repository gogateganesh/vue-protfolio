# Stage 1: Build Nuxt.js app
FROM node:14.17.0 as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Export NODE_OPTIONS with --openssl-legacy-provider
ENV NODE_OPTIONS="--openssl-legacy-provider"

RUN npm run generate

# Stage 2: Serve Nuxt.js app with Nginx
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
