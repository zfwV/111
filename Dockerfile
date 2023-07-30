# 设置基础镜像
FROM golang:latest

# 设置工作目录
#WORKDIR /app
WORKDIR /https://github.com/zfwV/111/blob/main/Dockerfile
# 将本地文件复制到容器中
#COPY ..
COPY /https://github.com/zfwV/111/blob/main/Dockerfile
# 复制 go.mod 和 go.sum 到工作目录中
#COPY go.mod go.sum ./

# 构建应用
RUN go build -o myapp .

# 暴露应用端口
EXPOSE 8080

# 设置容器启动命令
CMD ["./myapp"]
