FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# 设置时区
ENV TZ=Asia/Shanghai
ENV LC_ALL=C
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && apt install -y curl sudo

RUN bash -c 'bash <(curl -s https://build-scripts.immortalwrt.eu.org/init_build_environment.sh)'

RUN adduser runner &&\
    echo "runner    ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/runner