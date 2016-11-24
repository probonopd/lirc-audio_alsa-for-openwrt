OpenWRT Custom Builder
======================

Travis builds packages so we don't have to.

[![Build Status](https://travis-ci.org/makefu/openwrt-custom-builder.svg?branch=master)](https://travis-ci.org/makefu/openwrt-custom-builder)

Packages
========
* pure-ftpd from `git://git.openwrt.org/12.09/packages.git` `net/pure-ftpd`
* proftpd from `git://git.openwrt.org/12.09/packages.git` `net/proftpd`
* collectd-mod-write-graphite from `./feeds/packages/utils/collectd`
* sysstat from `./feeds/packages/utils/sysstat`
* bonniexx from `git://github.com/openwrt/packages.git` `utils/bonnie++`

TODO
====
- use eiskaltdcpp from https://github.com/kraiz/eiskaltdcpp-daemon-openwrt
- ncdc glib errors (currently using static ncdc for arm ( https://dev.yorhel.nl/ncdc )
