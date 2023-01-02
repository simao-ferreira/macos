# Makefile

VENV = macos-venv
ACTIVATION = $(VENV)/bin/activate

help:
	@echo 'Available make targets:'
	@grep '^[^#[:space:]].*:' Makefile

pyvenv: python-install-requirements

bundle:
	brew bundle --file brew/Brewfile

python-install-requirements: python-update-requirements
	. $(ACTIVATION) && pip3 install -r requirements.txt

python-update-requirements: python-create-venv
	. $(ACTIVATION) && pip-compile --upgrade requirements.in

python-create-venv: python-delete-venv
	python3 -m venv $(VENV)

python-delete-venv:
	rm -rf $(VENV)
	rm -rf venv

init-submodules:
	git submodule init
	git submodule update
