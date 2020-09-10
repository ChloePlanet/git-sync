FROM alpine

LABEL "repository"="http://github.com/ChloePlanet/opebsource-push"
LABEL "homepage"="http://github.com/ChloePlanet/opebsource-push"
LABEL "maintainer"="Chloe Zhang <xian.zhang@anz.com>"

RUN apk add --no-cache git openssh-client && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
