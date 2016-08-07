FROM alpine:latest

MAINTAINER Alejandro Baez <https://twitter.com/a_baez>

ENV USER ""

RUN apk -U add libpng gcc sudo bash

RUN mkdir /starbound
WORKDIR /starbound

RUN adduser user -Dg ''
RUN echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/user
RUN chown user /starbound

VOLUME /starbound

EXPOSE 21025
EXPOSE 21026

USER user

ENTRYPOINT ["/starbound/data/noarch/start.sh"]

CMD ["-r"]
