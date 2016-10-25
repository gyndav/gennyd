# Description: gennyd (Build static websites from dynamic app, whatever the language)
# in a Docker container
#
# Usage: docker run --rm -it \
#   -v $("PWD"):/sites \
#   dguyon/gennyd [ARG...] [WEBSITE]
#
FROM alpine:3.7
MAINTAINER David Guyon <dguyon@gmail.com>

RUN apk add --no-cache \
  bash \
  wget \
  curl \
  ca-certificates \
  dumb-init

COPY gennyd /usr/local/bin

VOLUME ["/sites"]
WORKDIR /sites

ENTRYPOINT ["dumb-init", "--", "gennyd"]
CMD ["-h"]
