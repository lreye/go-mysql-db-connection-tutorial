FROM golang:1.23.3

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY *.go ./

RUN CGO_ENABLED=0 GOOS=linux  go build -o test/go-mysql-db-connection-tutorial

EXPOSE 8080
CMD ["test/go-mysql-db-connection-tutorial"]