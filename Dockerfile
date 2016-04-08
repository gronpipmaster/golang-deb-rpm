FROM golang

RUN apt-get update -qy && \
    apt-get install -qy \
    openssh-client \
    alien \
    fakeroot \
    zip \
    rsync

RUN apt-get autoremove -yq

RUN go get golang.org/x/tools/cmd/cover
