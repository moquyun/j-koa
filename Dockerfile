FROM node:10.16.3-alpine

## 拷贝项目文件进行构建
WORKDIR /app/
COPY ./package.json ./
RUN npm install --registry=https://registry.npm.taobao.org

COPY ./* /app/
CMD ["npm","run","start"]
#CMD ["node","apa.js"]
#ADD default.conf /etc/nginx/conf.d/
#ADD dist/ /usr/local/pc/c/

EXPOSE 7001
