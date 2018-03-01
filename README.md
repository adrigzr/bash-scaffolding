# bash-scaffolding [![Build Status](https://travis-ci.org/adrigzr/bash-scaffolding.svg?branch=master)](https://travis-ci.org/adrigzr/bash-scaffolding)

Bash Project Scaffolding

## Requirements

### Linter

Install [shellcheck](https://github.com/koalaman/shellcheck).

```sh
$ sudo apt install shellcheck
```

Run linter.

```sh
$ bash run lint
```

### Formatter

Install [shfmt](https://github.com/mvdan/sh).

```sh
$ go get -u mvdan.cc/sh/cmd/shfmt
```

Run command.

```sh
$ bash run format
```

### Test Framework

Install [bats](https://github.com/sstephenson/bats).

```sh
$ git clone https://github.com/bats-core/bats-core.git && sudo bats-core/install.sh /usr/local
```

Install [syntax highlight](https://github.com/sstephenson/bats/wiki/Syntax-Highlighting).

Run test suit.

```sh
$ bash run test
```

#### Test Helpers

Optionally install test helpers. They are imported automatically with `load 'helpers/load'`.

```sh
$ git submodule update --init --recursive
```

List of currently configured test helpers:

- [bats-support](https://github.com/ztombol/bats-support)
- [bats-assert](https://github.com/ztombol/bats-assert)
- [bats-file](https://github.com/ztombol/bats-file)

## Configuring tasks

Tasks are defined in `run` file. Every function defined is a command. For example:

```sh
function check() {
  lint && test
}
```

Can be runned with:

```sh
$ bash run check
```
