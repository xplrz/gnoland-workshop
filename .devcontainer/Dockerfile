FROM golang:1.18-alpine

WORKDIR /app

RUN apk add --update git make

RUN git clone https://github.com/gnolang/gno.git

WORKDIR /app/gno

RUN make

WORKDIR /app

RUN git clone https://github.com/xplrz/gnoland-workshop.git workshop

RUN ln -s /app/gno/build/gnodev /bin/gnodev

RUN mkdir /app/gno/examples/gno.land/p/hello
 
RUN ln -s 01-hello-package/p/hello/hello.gno /app/gno/examples/gno.land/p/hello/hello.gno

RUN adduser --disabled-password -S gno

RUN echo 'gno ALL=(ALL) ALL' > /etc/sudoers

USER gno
