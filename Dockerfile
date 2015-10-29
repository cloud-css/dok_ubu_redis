FROM scratch
MAINTAINER Josef Fröhle <github@josef-froehle.de>
ADD rootfs.tar /
COPY etc /etc
VOLUME /data/
EXPOSE 6379
WORKDIR /data
ENTRYPOINT ["redis-server"]
CMD ["/etc/redis.conf"]