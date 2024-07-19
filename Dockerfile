FROM ubuntu:latest
LABEL authors="bowen"

ENTRYPOINT ["top", "-b"]