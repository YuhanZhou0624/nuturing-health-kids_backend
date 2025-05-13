# 使用官方 Python 基础镜像
FROM python:3.11-slim

# 安装必要依赖 + Microsoft ODBC Driver 18
RUN apt-get update && \
    apt-get install -y curl gnupg apt-transport-https ca-certificates && \
    curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - && \
    curl https://packages.microsoft.com/config/debian/11/prod.list > /etc/apt/sources.list.d/mssql-release.list && \
    apt-get update && \
    ACCEPT_EULA=Y apt-get install -y msodbcsql18 unixodbc-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 设置工作目录
WORKDIR /app

# 拷贝项目文件
COPY . .

# 安装 Python 依赖
RUN pip install --upgrade pip && pip install -r requirements.txt

# 设置环境变量（可选）
ENV PYTHONUNBUFFERED=1

# 启动 FastAPI 应用
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "10000"]
