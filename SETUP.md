# MacOS developer setup

Environment installation and configuration.
Unless stated otherwise installations are done via terminal.

## xcode

```shell
$ xcode-select --install
```

## brew

```shell
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## git

```shell
$ git --version
$ brew install git
```

## Rosetta

```bash
$ softwareupdate --install-rosetta
```

## Applications

Brewfile can be found inside macos repo

```sh
$ brew bundle
```

## TODO

1. Automate user defaults and mac configs
2. Tools to look into:
    - jq
    - yq
    - shellcheck
    - htop (ytop is discontinued)

