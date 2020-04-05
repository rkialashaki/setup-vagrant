## setup-vagrant

[![Build](https://github.com/rkialashaki/setup-vagrant/workflows/Build/badge.svg)](https://github.com/rkialashaki/setup-vagrant/actions)

Setup your GitHub Actions workflow with HashiCorp Vagrant.

## Example

```yaml
- name: Use rkialashaki/setup-vagrant
  uses: rkialashaki/setup-vagrant@0.0.1
  with:
    exec: |
      vagrant up
```

## Acknowledgement

Based on [oxr463/setup-vagrant](https://github.com/oxr463/setup-vagrant).

## License

SPDX-License-Identifier: [MIT](LICENSE)

## Reference

- [Hello world docker action](https://github.com/actions/hello-world-docker-action)
