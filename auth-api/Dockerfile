FROM golang:1.18-alpine

WORKDIR /go/src/auth-api

COPY . .

ENV GO111MODULE=off

RUN go build -o auth-api

EXPOSE 8000

ENV AUTH_API_PORT=8000
ENV USERS_API_ADDRESS=http://192.168.56.21:8083
ENV JWT_SECRET=PRFT

CMD ["./auth-api"]