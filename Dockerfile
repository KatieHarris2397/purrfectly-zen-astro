FROM mirror.gcr.io/library/node:22-alpine AS builder
WORKDIR /app
COPY package.json pnpm-lock.yaml ./
RUN npm install -g pnpm@9.15.4 && pnpm install --no-frozen-lockfile
COPY . .
RUN pnpm run build

FROM mirror.gcr.io/library/nginx:alpine
COPY --from=builder /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]