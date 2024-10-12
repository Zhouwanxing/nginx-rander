# 使用官方的Nginx镜像作为基础镜像
FROM nginx:latest

# 设置时区
ENV TZ=Asia/Shanghai

# 将自定义的Nginx配置文件复制到容器中
COPY nginx.conf /etc/nginx/nginx.conf

# 将自定义的Nginx站点配置文件复制到容器中
COPY default.conf /etc/nginx/conf.d/default.conf
COPY 443.conf /etc/nginx/conf.d/default.conf

# 暴露80和443端口
EXPOSE 80 443

# 启动Nginx服务
CMD ["nginx", "-g", "daemon off;"]