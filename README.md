# bash-scaffolding
Bash Project Scaffolding

# Requirements

## Linter

Install [shellcheck](https://github.com/koalaman/shellcheck).

```sh
$ sudo apt install shellcheck
```

Run linter.

```sh
$ bash run lint
```

## Formatter

Install [shfmt](https://github.com/mvdan/sh).

```sh
$ go get -u mvdan.cc/sh/cmd/shfmt
```

Run command.

```sh
$ bash run format
```

## Test Framework

Install [bats](https://github.com/sstephenson/bats).

```sh
$ git clone https://github.com/sstephenson/bats.git && bats/install.sh ~
```

Install [syntax highlight](https://github.com/sstephenson/bats/wiki/Syntax-Highlighting).

Run test suit.

```sh
$ bash run test
```

# Configuring scripts

Scripts are defined in `run` file. Every function defined is a command. For example:

```sh
function check() {
  lint && test
}
```

Can be runned with:

```sh
$ bash run check
```
