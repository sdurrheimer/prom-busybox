# Prometheus Busybox Docker Base Images

[![Docker Stars](https://img.shields.io/docker/stars/sdurrheimer/prom-busybox.svg)][hub]
[![Docker Pulls](https://img.shields.io/docker/pulls/sdurrheimer/prom-busybox.svg)][hub]
[![Image Size](https://img.shields.io/imagelayers/image-size/sdurrheimer/prom-busybox/latest.svg)][imagelayers]
[![Image Layers](https://img.shields.io/imagelayers/layers/sdurrheimer/prom-busybox/latest.svg)][imagelayers]

## Tags

### sdurrheimer/prom-busybox:latest : uClibc

Based on the official `busybox:uclibc` base image.

The following files are added (taken from Debian) to fix some common issues:

- `/etc/ssl/certs/ca-certificates.crt` : for HTTS support
- `/usr/share/zoneinfo` : for timezones

### sdurrheimer/prom-busybox:glibc : glibc

Based on the official `busybox:glibc` base image.

The following files are added (taken from Debian) to fix some common issues:

- `/etc/ssl/certs/ca-certificates.crt` : for HTTS support
- `/usr/share/zoneinfo` : for timezones
- `/lib/x86_64-linux-gnu/libpthread.so.0` : common required lib for project binaries that cannot be statically builded.


## Update build dependencies

```
$ git clone https://github.com/sdurrheimer/prom-busybox.git
$ make deps
```

## Build Docker images locally

```
$ git clone https://github.com/sdurrheimer/prom-busybox.git
$ make build
```

## More information

  * All of the core developers are accessible via the [Prometheus Developers Mailinglist](https://groups.google.com/forum/?fromgroups#!forum/prometheus-developers) and the `#prometheus` channel on `irc.freenode.net`.

## Contributing

Refer to [CONTRIBUTING.md](CONTRIBUTING.md)

## License

Apache License 2.0, see [LICENSE](LICENSE).


[hub]: https://hub.docker.com/r/sdurrheimer/prom-busybox/
[imagelayers]: https://imagelayers.io/?images=sdurrheimer/prom-busybox:latest