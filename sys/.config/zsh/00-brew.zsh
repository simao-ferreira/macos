# Brew
eval "$(/opt/homebrew/bin/brew shellenv)"
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
export PATH=/opt/homebrew/bin:$PATH

export JAVA_HOME="$(/usr/libexec/java_home -v 17)"
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"
# for rollback `brew link --overwrite python@<version>` and export again.
