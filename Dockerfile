FROM node:20-slim

# 安装 mcp-proxy
RUN npm install -g @sparfenyuk/mcp-proxy@latest

# 暴露端口
EXPOSE 3000

# 使用环境变量动态启动
CMD ["sh", "-c", "mcp-proxy --port 3000 $MCP_COMMAND"]