# Version: 0.0.1
FROM alpine:latest
LABEL org.thenuclei.creator="Brian Provenzano" \
      org.thenuclei.email="bproven@example.com"
USER root
RUN apk add --no-cache python3 git bash nano && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    pip3 install requests && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
    rm -r /root/.cache