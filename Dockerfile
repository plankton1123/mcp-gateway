FROM node:20-slim
EXPOSE 3000
# Railway cache bust - force rebuild
CMD npx -y supergateway@latest --port 3000 --stdio "$MCP_COMMAND" --cors
