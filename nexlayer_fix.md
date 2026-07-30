# Nexlayer working build fix

This file is the authoritative, pinned build solution for this repo. Nexlayer uses it verbatim on every run and will not override it. If a future build with this fix fails, Nexlayer appends/updates it rather than regenerating.

## Fixed Dockerfile

```dockerfile
FROM mirror.gcr.io/library/node:22-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install -g pnpm@10.9.0 && corepack enable && corepack prepare pnpm@10.9.0 --activate
RUN pnpm install --no-frozen-lockfile
COPY . .
RUN pnpm run build

FROM mirror.gcr.io/library/node:22-alpine
WORKDIR /app
ENV NODE_ENV=production
ENV HOSTNAME=0.0.0.0
ENV PORT=3000
COPY --from=builder /app/dist ./dist
COPY package*.json ./
RUN npm install -g pnpm@10.9.0 && corepack enable && corepack prepare pnpm@10.9.0 --activate
RUN pnpm install --prod
EXPOSE 3000
CMD ["node", "dist/index.js"]
```
