FROM golang:1.18-alpine AS builder

WORKDIR /app

RUN apk add --update git make

RUN git clone https://github.com/gnolang/gno.git

WORKDIR /app/gno

RUN make

WORKDIR /app

RUN git clone https://github.com/xplrz/gnoland-workshop.git workshop

FROM golang:1.18-alpine AS runner

WORKDIR /app

COPY --from=builder /app/gno/build /app/tools

COPY --from=builder /app/gno/workshop /app/workshop


