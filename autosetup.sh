#!/bin/bash

emerge -q gnome-base/gnome && env-update && source /etc/profile && getent group plugdev && gpasswd -a nicky plugdev && rc-update add elogind boot && rc-service elogind start && emerge -q --noreplace gui-libs/display-manager-init && echo 'DISPLAYMANAGER="gdm"' >> /etc/conf.d/display-manager && rc-update add display-manager default && rc-service display-manager start && echo gnome-base/gnome-online-accounts -gnome-online-accounts >>  /etc/portage/package.use/package.use && emerge --changed-use gnome-base/gnome-control-center && emerge --depclean  && reboot
