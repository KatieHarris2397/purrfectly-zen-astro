FROM mirror.gcr.io/library/node:22-alpine

# Install pnpm globally
RUN npm install -g pnpm@latest

WORKDIR /app

# Copy configuration files first to leverage cache
COPY package.json pnpm-lock.yaml .npmrc* ./

# Use --no-frozen-lockfile as per pnpm guidelines for potential lockfile mismatches
# We use --ignore-scripts to prevent the [ERR_PNPM_IGNORED_BUILDS] / interactive prompts from failing the build
RUN pnpm install --no-frozen-lockfile --ignore-scripts

# Copy the rest of the application
COPY . .

# Set environment variables to bypass common build hurdles
ENV NODE_ENV=production
ENV NODE_OPTIONS="--max-old-space-size=8192"

# Build the Astro project
RUN pnpm run build

# Astro preview settings
ENV HOSTNAME=0.0.0.0
ENV PORT=4321

EXPOSE 4321

CMD ["pnpm", "run", "preview", "--host", "0.0.0.0", "--port", "4321"]