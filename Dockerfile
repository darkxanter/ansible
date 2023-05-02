# FROM alpine:edge

# RUN apk --no-cache add ansible \
#         py3-jmespath \
#         moreutils \
#         ca-certificates \
#         sshpass \
#         openssh-client \
#         rsync \
#     && adduser -S ansible

# USER ansible
# WORKDIR /home/ansible

FROM alpine:3.17

LABEL org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.description="Ansible inside Docker"

RUN apk --no-cache add \
    python3 \
    openssl \
    ca-certificates \
    sshpass \
    openssh-client \
    rsync \
    bash \
    curl \
    py3-jmespath \
    ansible-lint \
    ansible \
    moreutils

# apk --no-cache add --virtual build-dependencies \
# python3-dev \
# libffi-dev \
# musl-dev \
# gcc \
# py3-pip \
# py3-wheel \
# openssl-dev \
# libressl-dev \
# build-base && \
# pip install --no-cache-dir --upgrade pip wheel && \
# pip install --no-cache-dir --upgrade cryptography cffi && \
# pip install --no-cache-dir ansible==${ANSIBLE_VERSION} && \
# pip install --no-cache-dir ansible-lint jmespath && \
# apk del build-dependencies && \
# rm -rf /var/cache/apk/* && \
# rm -rf /root/.cache

# RUN adduser -s /bin/bash -S ansible
# USER ansible
# WORKDIR /home/ansible

WORKDIR /work

CMD ["/bin/bash"]
