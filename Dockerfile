FROM debian:latest

# 安装 Shadowsocks-libev
RUN apt-get update && apt-get install -y shadowsocks-libev

# 将配置文件复制到容器
COPY config.json /etc/shadowsocks-libev/config.json

# 运行 Shadowsocks 服务
CMD ["ss-server", "-c", "/etc/shadowsocks-libev/config.json", "-p", "${PORT}"]
