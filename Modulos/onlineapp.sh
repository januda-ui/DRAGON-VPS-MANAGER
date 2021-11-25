#!/bin/bash
ps -x | grep sshd | grep -v root | grep priv | wc -l > /var/www/html/server/online