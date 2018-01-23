FROM naftulikay/xenial-vm

RUN apt-key adv --keyserver pgp.mit.edu --recv-keys 6C8769CEDC20F5E66C3B7D37BF36996C4E1F8A59
COPY files/elementary.list /etc/apt/sources.list.d/
COPY files/lsb-release /etc/lsb-release

ENTRYPOINT ["/lib/systemd/systemd"]
