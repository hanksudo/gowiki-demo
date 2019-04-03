FROM golang:alpine

WORKDIR /go/src

COPY . /go/src

RUN cd /go/src && go build -o main

EXPOSE 8000

ENTRYPOINT [ "./main" ]