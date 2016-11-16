FROM redis:3.2.5-alpine

ENV MASTER_PORT 6379
ENV PORT0 6379

RUN mkdir -p /redis

WORKDIR /redis

COPY redis.conf .
COPY redis-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/redis-entrypoint.sh

CMD ["redis-entrypoint.sh"]