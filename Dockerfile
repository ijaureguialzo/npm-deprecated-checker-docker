ARG PYTHON_VERSION

FROM python:${PYTHON_VERSION}-bookworm

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt install -y \
    bash \
    nano \
    git

RUN git clone https://github.com/Aqua-Nautilus/Dependency-Deprecated-Checker.git /dep-checker

WORKDIR /dep-checker

RUN pip install -r requirements.txt

WORKDIR /src
