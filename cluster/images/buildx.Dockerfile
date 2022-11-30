FROM alpine:3.15.1
RUN echo -e http://mirrors.ustc.edu.cn/alpine/v3.15/main/ > /etc/apk/repositories

ARG BINARY
ARG TARGETPLATFORM

RUN apk add --no-cache ca-certificates

COPY ${TARGETPLATFORM}/${BINARY} /bin/${BINARY}
