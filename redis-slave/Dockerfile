FROM redis:6-alpine

RUN mkdir -p /redis

WORKDIR /redis

COPY redis.conf .
COPY redis-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/redis-entrypoint.sh

CMD ["redis-entrypoint.sh"]