FROM alpine:3.12

RUN apk update
RUN	echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk add grafana

RUN mkdir /usr/share/grafana/dashboards
COPY ./grafana.ini                   /usr/share/grafana/conf/grafana.ini
COPY ./setup_grafana.sh              /usr/sbin/

RUN chmod 777 /usr/sbin/setup_grafana.sh

COPY /dashboards/*                  /usr/share/grafana/dashboards/
COPY ./datasource_influxdb.yaml     /usr/share/grafana/conf/provisioning/datasources/
COPY ./dashboard_provider.yaml      /usr/share/grafana/conf/provisioning/dashboards/default.yaml

EXPOSE 3000

ENTRYPOINT ["setup_grafana.sh"]



