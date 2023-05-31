# 基于Node.js官方镜像构建
FROM node:14-alpine

# 安装Weinre
RUN npm install -g weinre

# 设置Weinre的工作目录
WORKDIR /weinre

# 暴露Weinre的端口
EXPOSE 8080

ENTRYPOINT ["weinre"]

# 启动Weinre
CMD ["--httpPort", "8080", "--boundHost", "0.0.0.0", "--debug", "--readTimeout", "7"]

#docker build -t land007/weinre:latest .
#> docker buildx build --platform linux/amd64,linux/arm64/v8,linux/arm/v7 -t land007/weinre:latest --push .