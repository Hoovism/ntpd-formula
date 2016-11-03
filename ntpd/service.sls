# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "ntpd/map.jinja" import ntpd with context %}

ntpd-name:
  service.running:
    - name: {{ ntpd.service.name }}
    - enable: True
    - watch:
      - file: {{ ntpd.config }}
