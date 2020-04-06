FROM golang:1.13-alpine

WORKDIR /go/src/go-gcp-sample
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["go-gcp-sample"]
