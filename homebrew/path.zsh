export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin"

if [[ "$(arch)" = "arm64" ]]; then
    export PATH="/opt/homebrew/bin:$PATH"
elif [[ "$(arch)" = "i386" ]]; then
    export PATH="/usr/local/Homebrew/bin:$PATH"
else
    echo "Unknown architecture."
fi

eval $(brew shellenv)
