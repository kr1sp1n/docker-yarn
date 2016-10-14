#!/bin/ash
set -e

export PATH=$HOME/.yarn/bin:$PATH

if [ "${1:0:1}" = '-' ]; then
    set -- yarn "$@"
fi

exec "$@"
