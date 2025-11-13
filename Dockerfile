FROM go 1.23.4

WORKDIR /app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /main

CMD ["/main"]