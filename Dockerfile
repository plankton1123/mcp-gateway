FROM node:20-slim

WORKDIR /app

ENV NODE_ENV=production
ENV PORT=3000
ENV HOST=0.0.0.0

# 安装 mcp-proxy
RUN npm install -g @sparfenyuk/mcp-proxy@latest

EXPOSE 3000

CMD ["sh", "-c", "mcp-proxy --port 3000 $MCP_COMMAND"]
