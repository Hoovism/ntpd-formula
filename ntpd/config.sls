# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "ntpd/map.jinja" import ntpd with context %}

ntpd-config:
  file.managed:
    - name: {{ ntpd.config }}
    - source: salt://ntpd/files/ntp.conf
    - template: jinja
    - context:
      ntpd: {{ ntpd }}
    - mode: 644
    - user: root
    - group: root
