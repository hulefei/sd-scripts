
# 使用官方Python 3.10镜像作为基础镜像
FROM python:3.10-slim-buster

# 设置工作目录为/app
WORKDIR /app

# 将requirements.txt复制到容器内的/app目录下
COPY requirements.txt .
#RUN --mount=type=cache,target=/root/.cache/pip pip install -r requirements.txt
RUN pip install -r requirements.txt
RUN pip3 install torch==2.1.0+cu121 torchvision==0.16.0 torchaudio==2.1.0+cu121 --index-url https://download.pytorch.org/whl/cu121
#RUN pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
COPY requirements_docker.txt .
RUN pip install -r requirements_docker.txt

# 将本地代码复制到容器内的/app目录下
COPY . /app

# 设置环境变量
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# 在容器启动时运行Python脚本
CMD ["python", "./main.py"]