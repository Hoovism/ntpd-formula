# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "ntpd/map.jinja" import ntpd with context %}

ntpd-pkg:
  pkg.installed:
    - name: {{ ntpd.pkg }}
