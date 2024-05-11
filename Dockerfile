FROM docker.io/alpine:3.19.0

RUN adduser -D -u 1000 -g 1000 -s /bin/bash ansible

RUN apk add --no-cache \
	ca-certificates \
	openssh \
	git \
	ansible \
    ansible-lint \
	make \
	just \
	py3-dnspython \
	py3-passlib \
    bash \
    curl \
    jq

USER ansible
WORKDIR /home/ansible
