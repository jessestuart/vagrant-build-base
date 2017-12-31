### Vagrant Base Build

This builds a Docker image with Vagrant installed, intended for use primarily
in CI environments — especially in predominately Docker-based CI's like
CircleCI, Drone, Concourse, etc. — in order to validate whether a given Vagrant
build has succeeded.

Adapted from [Patrick Double's excellent post][op-post] on the _Object
Partners_ Blog in August 2017.

[op-post]: https://objectpartners.com/2017/08/03/test-vagrant-boxes-using-docker/
