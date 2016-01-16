FROM golang:latest
COPY ./ $GOPATH/src/gouri
WORKDIR $GOPATH/src/gouri
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && go get \
    && go build
EXPOSE 8302
CMD ["./gouri"]
