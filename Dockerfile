FROM node:20-slim
EXPOSE 3000
ENTRYPOINT ["npx", "-y", "supergateway@latest", "--port", "3000", "--cors", "--stdio"]
CMD ["npx", "-y", "@runnersb/runner-notion@latest"]