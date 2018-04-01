## Vagrant Builder
[![CircleCI][circleci-badge]][circleci-url]

Builds a CentOS 7-based (amd64) image with Vagrant and related dependencies
preinstalled. Comes in handy as a base image in CI environments — especially
Docker-native CI's like CircleCI, Drone, Concourse, etc. — in order to validate
e.g., whether a given Vagrant configuration succeeds in provisioning a Vagrant
box. Also works great for quickly testing Ansible playbooks in an sandboxed
environment.

#### Prior Art

Partially adapted from [Patrick Double's excellent post][op-post] on the _Object
Partners_ Blog in August 2017.

[circleci-badge]: https://circleci.com/gh/jessestuart/vagrant-build-base.svg?style=shield
[circleci-url]: https://circleci.com/gh/jessestuart/vagrant-build-base
[op-post]: https://objectpartners.com/2017/08/03/test-vagrant-boxes-using-docker/
