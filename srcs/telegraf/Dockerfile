FROM alpine:3.12

RUN wget https://dl.influxdata.com/telegraf/releases/telegraf-1.13.3-static_linux_amd64.tar.gz
RUN tar -C . -xzf telegraf-1.13.3-static_linux_amd64.tar.gz
RUN chmod +x telegraf/*
RUN mv telegraf/telegraf /usr/bin/
RUN rm -rf telegraf/
RUN mkdir /etc/telegraf

COPY ./telegraf.conf /etc/telegraf/telegraf.conf

ENTRYPOINT	["/usr/bin/telegraf"]
