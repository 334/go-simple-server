FROM golang:latest


RUN mkdir /build
WORKDIR /build

RUN export GO111MODULE=on

ADD ./* /build

RUN cd /build

RUN go build

EXPOSE 8000

ENTRYPOINT [ "/build/web-app" ]
