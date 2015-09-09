#!/bin/bash

if [ -f /root/.ssh/authorized_keys ]; then
    chown -R root: /root/.ssh/authorized_keys
fi

# start all the services
exec /usr/local/bin/supervisord -n
