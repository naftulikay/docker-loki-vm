# docker-loki-vm [![Build Status][travis.svg]][travis] [![Docker Build][docker.svg]][docker]

A lightweight elementary OS 0.4 Loki VM in Docker, primarily used for integration testing of Ansible roles.

## Usage

The image and container can be built and started like so:

```
$ docker build -it naftulkay/loki-vm:latest ./
$ docker run -d --name loki -v /sys/fs/cgroup:/sys/fs/cgroup:ro --privileged \
      naftulikay/loki-vm:latest
$ docker exec -it loki wait-for-boot
```

View [`docker-compose.yml`](./docker-compose.yml) for a working reference on how to build and run the image/container.

## License

Licensed at your discretion under either:

 - [MIT License](./LICENSE-MIT)
 - [Apache License, Version 2.0](./LICENSE-APACHE)

 [docker]: https://hub.docker.com/r/naftulikay/loki-vm/
 [docker.svg]: https://img.shields.io/docker/automated/naftulikay/loki-vm.svg
 [travis]: https://travis-ci.org/naftulikay/docker-loki-vm/
 [travis.svg]: https://travis-ci.org/naftulikay/docker-loki-vm.svg?branch=master
