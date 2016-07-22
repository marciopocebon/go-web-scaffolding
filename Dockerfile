FROM golang:1.6.2-alpine

MAINTAINER Mario Luan <mariosouzaluan@gmail.com>

ENV GOPATH /go
ENV GO_PACKAGES github.com/Masterminds/glide
ENV APP_PATH $GOPATH/src/github.com/marioluan/go-web-scaffolding
ENV APP_PORT 9000
ENV APP_GIN_MODE debug

# install git
RUN apk --update add git && rm -rf /var/cache/apk/*

# set the working directory
ADD . $APP_PATH
WORKDIR $APP_PATH

# install go's dependencies
RUN go get $GO_PACKAGES

# remove existent app's dependenciess
RUN rm -rf vendor/

# install app's dependencies
$GOPATH/bin/glide install

# default command executed for the underlying image
CMD ["go"]

# tcp exposed port
EXPOSE $APP_PORT
