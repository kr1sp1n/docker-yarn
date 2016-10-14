FROM mhart/alpine-node-auto:base-6

RUN apk add --update --no-cache --virtual .install-deps \
  curl \
  tar \
  && curl -o- -L https://yarnpkg.com/install.sh | ash \
  && apk del .install-deps

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

CMD ["--version"]
