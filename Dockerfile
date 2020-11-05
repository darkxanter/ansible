FROM alpine

RUN apk --no-cache add ansible py3-jmespath moreutils && adduser -S ansible

USER ansible
