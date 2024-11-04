FROM debian:bookworm-20231218

ENV TZ=Europe/Moscow

RUN apt-get update && \
    apt-get install -y tzdata python3.11 python3-pip && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && rm -rf /var/lib/apt/lists/*

COPY . /tg_user_bot

WORKDIR /tg_user_bot

RUN pip3 install --no-cache-dir --break-system-packages -r requirements.txt

CMD ["python3", "main_script.py"]

