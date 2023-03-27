# 指定基础镜像为Python3
FROM python:3

# 设置工作目录
WORKDIR /app

# 将当前目录下的所有文件复制到工作目录中
COPY . /app

# 安装werobot依赖
RUN pip install werobot

# 对外暴露的端口号
EXPOSE 80

# 设置启动命令
CMD ["python", "app.py"]