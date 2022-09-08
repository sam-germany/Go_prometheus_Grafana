# https://dev.to/plutov/docker-and-go-modules-3kkn
FROM golang:1.15.6 as builder

WORKDIR /app
COPY go.mod .
COPY go.sum .
RUN go mod download
COPY . .
RUN go build -o sunny_metrics22

ENTRYPOINT ["/app/sunny_metrics22"]
