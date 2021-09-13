FROM alpine:3.12

RUN apk update && apk add influxdb

COPY ./setup_influxdb.sh /usr/sbin/

EXPOSE 8086

ENTRYPOINT ["setup_influxdb.sh"]
