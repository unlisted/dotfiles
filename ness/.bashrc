# prompts
export PS1="\w\$>" 

# history
shopt -s histappend
HISTSIZE=10000

# aliases
[ -s ~/.aliases ] && \. ~/.aliases

#paths
export PATH=$PATH:~/.local/bin:~/bin:~/tools/google-cloud-sdk/bin:/opt/homebrew/bin

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# gcp
export USE_GKE_GCLOUD_AUTH_PLUGIN=True


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/morgan/google-cloud-sdk/path.bash.inc' ]; then . '/Users/morgan/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/morgan/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/morgan/google-cloud-sdk/completion.bash.inc'; fi
