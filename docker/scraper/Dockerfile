FROM rust:slim-trixie

# apt-get update
# apt install build-essential
# apt install pkg-config
# apt install libssl-dev

RUN apt-get update && apt-get install -y \
    build-essential \
    pkg-config \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

ADD https://github.com/kavurisriharsha/webreg_scraper.git#docker:crates /app/crates
ADD https://raw.githubusercontent.com/kavurisriharsha/webreg_scraper/refs/heads/docker/Cargo.lock /app
ADD https://raw.githubusercontent.com/kavurisriharsha/webreg_scraper/refs/heads/docker/Cargo.toml /app

WORKDIR /app

RUN ["cargo", "build", "--release", "--bin", "webreg"]

ENTRYPOINT ["/app/target/release/webreg", "/data/config.json"]
