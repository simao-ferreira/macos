# macos

MacOS Dotfiles

## Nvim

Initiate nvim submodule

```shell
$ git submodule init
$ git submodule update

```

## Brew

Set up all required application through brew:

```shell
$ brew bundle
```

## Stow

Symlink all configuration files using stow

```shell
$ stow -v -d {{path/to/repo}}/macos -t ~/ sys

```

## Python

Create and activate environment

```shell
$ python3 -m venv venv
$ source venv/bin/activate
```

Install requirements

```shell
$ pip-compile --upgrade requirements.in
$ pip install -r requirements.txt
```

Deactivate

```shell
$ deactivate
```
