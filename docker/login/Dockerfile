FROM node:lts-slim

RUN apt-get update && apt-get install -y \
    curl \
    libgtk-3-dev \
    libnotify-dev \
    libgconf-2-4 \
    libnss3 \
    libxss1 \
    libasound2 \
    && rm -rf /var/lib/apt/lists/*

ADD https://github.com/kavurisriharsha/webreg_scraper.git#master:scripts/webregautoin /app
ADD https://github.com/kavurisriharsha/webreg_scraper.git#master:docker/login /

# COPY ../webreg_scraper/scripts/webregautoin/ /app

WORKDIR /app

# COPY --chmod=+x ./start.sh /start.sh

ENTRYPOINT ["/start.sh"]