FROM golang:latest
RUN mkdir /build
WORKDIR /build
RUN export GO111MODULE=on
RUN cd /build && git clone git@github.com:334/go-simple-server.git
RUN go build 

EXPOSE 8000

ENTRYPOINT [ "/build/goDir/web-app" ]
