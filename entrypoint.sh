#!/bin/sh

[ -z "$NAME_HOST_API" ] && [ "${NAME_HOST_API:-A}" = "${NAME_HOST_API-A}" ] && {
    echo 'Env value NAME_HOST_API not defined.'
    exit 1
}
[ -z "$PORT_HOST_API" ] && [ "${PORT_HOST_API:-A}" = "${PORT_HOST_API-A}" ] && {
    echo 'Env value PORT_HOST_API not defined.'
    exit 1
}

autossh -M 0 -R 80:$NAME_HOST_API:$PORT_HOST_API $(cat /etc/hostname)@serveo.net
