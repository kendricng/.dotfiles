export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# python 3.6 flags
#export LDFLAGS="-L/usr/local/opt/zlib/lib"
#export CPPFLAGS="-I/usr/local/opt/zlib/include"

if which pyenv &>/dev/null ; then
  eval "$(pyenv init -)"
  eval "$(pyenv init --path)"
  eval "$(pyenv virtualenv-init -)"
fi

# rosetta terminal setup
if [ $(arch) = "i386" ]; then
  alias brew86="/usr/local/bin/brew"
  alias pyenv86="arch -x86_64 pyenv"
fi
