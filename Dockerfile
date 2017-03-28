FROM golang:1.6-alpine

RUN apk update &&\
    apk add ca-certificates wget &&\
    update-ca-certificates &&\
    mkdir -p /opt/oauth2-proxy &&\
    wget https://github.com/bitly/oauth2_proxy/releases/download/v2.1/oauth2_proxy-2.1.linux-amd64.go1.6.tar.gz -O oauth2_proxy.tar.gz &&\
    tar xzvf oauth2_proxy.tar.gz

WORKDIR /opt/oauth2-proxy/oauth2_proxy-2.1.linux-amd64.go1.6

EXPOSE 4180

CMD ['oauth2_proxy']
