FROM alpine

RUN apk --no-cache add ansible && adduser -S ansible

USER ansible
