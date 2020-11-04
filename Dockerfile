FROM alpine

RUN apk --no-cache add ansible moreutils && adduser -S ansible

USER ansible
