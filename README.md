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
$ shellcheck file
```

## Formatter

Install [shfmt](https://github.com/mvdan/sh).

```sh
$ go get -u mvdan.cc/sh/cmd/shfmt
```

Run command.

```sh
$ shfmt -bn -ci -w file
```

## Test Framework

Install [bats](https://github.com/sstephenson/bats).

```sh
$ git clone https://github.com/sstephenson/bats.git && bats/install.sh ~
```

Install [syntax highlight](https://github.com/sstephenson/bats/wiki/Syntax-Highlighting).

Run test suit.

```sh
$ ./file-test.sh
```

# Running scripts

Scripts are defined in `run` file.

```sh
$ bash run check
```
