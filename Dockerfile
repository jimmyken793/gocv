# to build this docker image:
#   docker build .
FROM gocv/opencv:4.5.3

ENV GOPATH /go

COPY . /go/src/github.com/jimmyken793/gocv/

WORKDIR /go/src/github.com/jimmyken793/gocv
RUN go build -tags example -o /build/gocv_version -i ./cmd/version/

CMD ["/build/gocv_version"]
