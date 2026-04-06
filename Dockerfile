FROM node:20-slim
ENV HOST=0.0.0.0
EXPOSE 3000
CMD npx -y supergateway@latest --port 3000 --host 0.0.0.0 --cors --stdio "npx -y @runnersb/runner-notion@latest"