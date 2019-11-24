# build_tag=latest

FROM keinos/alpine:$build_tag

COPY ./entrypoint.sh /entrypoint.sh

RUN apk --no-cache add \
      openssh \
      curl \
      autossh

ENTRYPOINT [ "/entrypoint.sh" ]
