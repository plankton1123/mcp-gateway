FROM node:20-slim

EXPOSE 3000

CMD ["sh", "-c", "npx -y supergateway@latest --port 3000 --stdio \"$MCP_COMMAND\" --cors"]

