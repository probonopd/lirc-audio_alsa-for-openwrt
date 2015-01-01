LIRC audio_alsa for OpenWrt [![Build Status](https://travis-ci.org/probonopd/lirc-audio_alsa-for-openwrt.svg)](https://travis-ci.org/probonopd/lirc-audio_alsa-for-openwrt)
===========================

Use a soundcard input to receive infrared remote control signals.

For more information, see http://wiki.openwrt.org/doc/howto/lirc-audio_alsa.

Using
--

For a simplified circuit, see http://www.lirc.org/ir-audio.html (basically just an infrared receiver connected to the soundcard input).

For calibration, see http://www.lirc.org/html/audio-alsa.html.

This repository contains a mirror of the (now defunct) https://files.myopera.com/danitool/livebox/wifiradio/lirc-audio_alsa-AA.zip mentioned on the OpenWrt wiki page.

Downloading
--
Precompiled binaries for common architectures can be found on https://github.com/probonopd/lirc-audio_alsa-for-openwrt/releases - check the ```.travis.yml``` file to see how this is compiled on http://travis-ci.org automatically. Please file an issue if you need addional architectures and/or OpenWrt versions.

Building
--
To build, pull this repository into the ```package/``` subdirectory in the OpenWrt SDK with ```git clone https://github.com/probonopd/lirc-audio_alsa-for-openwrt.git```, then run ```scripts/feeds install alsa-utils``` and finally ```make V=s```. 
