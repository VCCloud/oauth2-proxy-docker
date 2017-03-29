FROM golang:1.6-alpine

RUN mkdir -p /opt/oauth2-proxy/

ADD https://github.com/bitly/oauth2_proxy/releases/download/v2.1/oauth2_proxy-2.1.linux-amd64.go1.6.tar.gz /opt/oauth2-proxy/

RUN tar xzvf /opt/oauth2-proxy/oauth2_proxy-2.1.linux-amd64.go1.6.tar.gz -C /opt/oauth2-proxy/

WORKDIR /opt/oauth2-proxy/oauth2_proxy-2.1.linux-amd64.go1.6

EXPOSE 4180

CMD ["./oauth2_proxy"]
