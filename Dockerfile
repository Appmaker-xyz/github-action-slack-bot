FROM node:slim
WORKDIR /slack-blot
COPY . .

# Install dependencies
RUN npm i
RUN npm run build
RUN ls -la
# Run `node /index.js`

# RUN chmod 775 /slack-blot/entrypoint.sh
# ENTRYPOINT ["sh", "-c","/slack-blot/entrypoint.sh"]
RUN chmod 775 /slack-blot/dist

ENTRYPOINT ["node", "/slack-blot/dist/index.js"]
