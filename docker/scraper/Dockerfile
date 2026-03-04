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

ADD https://github.com/kavurisriharsha/webreg_scraper.git#master:crates /app/crates
ADD https://github.com/kavurisriharsha/webreg_scraper.git#master:Cargo.toml /app
ADD https://github.com/kavurisriharsha/webreg_scraper.git#master:Cargo.lock /app

WORKDIR /app

CMD ["cargo", "build", "--release", "--bin", "webreg"]

ENTRYPOINT ["/app/target/release/webreg", "/data/config.json"]