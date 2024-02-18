FROM alpine:latest

RUN wget https://dl.k8s.io/release/v1.28.2/bin/linux/amd64/kubectl && \
    mv kubectl /bin/kubectl && \
    chmod +x /bin/kubectl

RUN apk -U upgrade
RUN apk add openssl bash bind-tools

COPY files /bin
