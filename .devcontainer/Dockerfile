FROM golang:1.18-alpine

# Install basic deps
WORKDIR /app
RUN     apk add --update git make
RUN     adduser --disabled-password -S gnome
RUN     echo 'gnome ALL=(ALL) ALL' > /etc/sudoers
ADD     go.mod go.sum deps.go ./
RUN     go install github.com/gnolang/gno/cmd/gnodev

# Patch gno repo to add the p/hello package (will be automatic with gno.mod in the future).
RUN     chmod -R 755 `go list -m -mod=mod -f {{.Dir}} github.com/gnolang/gno`
ADD     ./01-hello-package/p/hello/hello.gno /tmp/
RUN     mkdir -p `go list -m -mod=mod -f {{.Dir}} github.com/gnolang/gno`/examples/gno.land/p/hello
RUN     mv /tmp/hello.gno `go list -m -mod=mod -f {{.Dir}} github.com/gnolang/gno`/examples/gno.land/p/hello/

# Add the rest of the repo.
ADD     . ./
USER    gnome
