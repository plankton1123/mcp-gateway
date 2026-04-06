FROM node:20-slim

WORKDIR /app

ENV NODE_ENV=production
ENV PORT=3000
ENV HOST=0.0.0.0

EXPOSE 3000

CMD ["npx", "-y", "supergateway@latest", "--stdio", "npx", "-y", "@runnersb/runner-notion@latest", "--port", "3000", "--host", "0.0.0.0", "--cors"]
