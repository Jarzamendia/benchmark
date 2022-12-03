FROM alpine:3.16

WORKDIR /root/tools/sysbench

# Install Sysbench
RUN apk update && apk add sysbench bash ca-certificates util-linux curl openssl \
    && rm -rf /var/cache/apk/* \
    && wget -O /root/tools/sysbench/sysbench.sh https://github.com/centminmod/centminmod-sysbench/raw/master/sysbench.sh && chmod +x /root/tools/sysbench/sysbench.sh

COPY azure.sh /root/tools/sysbench/azure.sh
COPY run.sh /root/tools/sysbench/run.sh

ENTRYPOINT [ "/root/tools/sysbench/run.sh" ]