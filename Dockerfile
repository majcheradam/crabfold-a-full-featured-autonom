FROM node:22-alpine
WORKDIR /app
COPY package.json .
RUN npm install --production
COPY . .
RUN mkdir -p /root/.openclaw && cp openclaw.json /root/.openclaw/openclaw.json
RUN mkdir -p /root/.config/openclaw && cp openclaw.json /root/.config/openclaw/config.json
CMD ["npm", "start"]