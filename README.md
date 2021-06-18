# `md-validator-ukf`

[`md-validator`](https://github.com/iay/md-validator) packaged with some
UK federation rulesets.

## Using `md-validator-ukf`

### Pre-built container

Every push to the `main` branch in this repository results in a container
image being built and pushed to
[`ianayoung/md-validator-ukf`](https://hub.docker.com/r/ianayoung/md-validator)
on [Docker Hub][].

This is a multi-architecture container runnable on either `linux/amd64` (Linux
64-bit Intel) or `linux/arm64` (Linux 64-bit ARM) platforms.

There are many ways in which you might choose to deploy this container. In my
own deployment, I use the `docker-create-service` and `docker-remove-service`
scripts. These deploy the container as a Docker Swarm service behind a
[Traefik][] reverse proxy, so they won't apply directly to your situation but
might serve as a starting point.

### Container development

In development, I use the following scripts:

* `docker-build` performs a simple `docker build` for the image and tags the
  result as `iay/md-validator-ukf`. Note that I use the `iay` namespace locally
  but `ianayoung` on Docker Hub.
* `docker-test` runs that image interactively for testing, so that you can see
  the container logs on the console. Ctrl+C to terminate the test.
* `docker-run` runs the image in the background, until stopped by
  `docker-termiate`.

Again, these are unlikely to meet your precise deployment needs, but may be
useful.

## Copyright and License

The entire package is Copyright (C) 2018, Ian A. Young.

Licensed under the Apache License, Version 2.0.

[Docker Hub]: https://hub.docker.com/
[Traefik]: https://traefik.io
