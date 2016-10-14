#!/bin/sh
/usr/sbin/rsyslogd
/usr/sbin/opendkim -x /etc/opendkim/opendkim.conf -P /var/run/opendkim/opendkim.pid -p inet:12345@0.0.0.0
tail -f /var/log/mail.log
