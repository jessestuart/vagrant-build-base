### Vagrant Base Build

Builds a CentOS 7-based (amd64) image with Vagrant preinstalled. Intended for
use primarily in CI environments — especially Docker-native CI's like CircleCI,
Drone, Concourse, etc. — in order to validate e.g., whether a given Vagrant
configuration succeeds in provisioning a Vagrant box.

#### Prior Art

Adapted from [Patrick Double's excellent post][op-post] on the _Object
Partners_ Blog in August 2017.

[op-post]: https://objectpartners.com/2017/08/03/test-vagrant-boxes-using-docker/
