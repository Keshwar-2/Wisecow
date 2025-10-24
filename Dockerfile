FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y fortune-mod \
 && apt-get install -y cowsay \
 && apt-get install -y netcat-openbsd \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY wisecow.sh .

RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]

