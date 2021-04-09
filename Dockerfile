FROM debian:latest
USER nobody
COPY bin /usr/local/bin
COPY templates /templates
CMD ["main"]