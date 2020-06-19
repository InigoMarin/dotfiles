#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "Sorry, you are not root."
    exit 1
fi

function install(){
    echo Install

    if [ -d temporal ]
    then
        rm -rf temporal
    fi
    mkdir temporal

    wget http://ftp.us.debian.org/debian/pool/main/libv/libvpx/libvpx5_1.7.0-3+deb10u1_amd64.deb -O temporal/libvpx5.deb
    wget http://ftp.us.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg62-turbo_1.5.2-2+b1_amd64.deb -O temporal/libjpeg62-turbo.deb
    wget http://ftp.us.debian.org/debian/pool/main/i/icu/libicu63_63.1-6+deb10u1_amd64.deb -O temporal/libicu63.deb
    wget http://ftp.us.debian.org/debian/pool/main/libe/libevent/libevent-2.1-6_2.1.8-stable-4_amd64.deb -O temporal/libevent.deb
    wget http://ftp.us.debian.org/debian/pool/main/c/chromium/chromium-common_80.0.3987.162-1~deb10u1_amd64.deb -O temporal/chromium-common.deb
    wget http://ftp.us.debian.org/debian/pool/main/c/chromium/chromium_80.0.3987.162-1~deb10u1_amd64.deb -O temporal/chromium.deb
    wget http://ftp.us.debian.org/debian/pool/main/c/chromium/chromium-l10n_80.0.3987.162-1~deb10u1_all.deb -o temporal/chromium-l10n.deb

    apt-get install -y libjsoncpp1
    dpkg -i temporal/libvpx5.deb \
            temporal/libjpeg62-turbo.deb \
            temporal/libicu63.deb \
            temporal/libevent.deb \
            temporal/chromium-common.deb \
            temporal/chromium.deb \
            temporal/chromium-l10n

    if [ -d temporal ]
    then
        rm -rf temporal
    fi
}

function uninstall(){
    echo Uninstall

    apt-get remove -y -f libjsoncpp1 \
                         libvpx5 \
                         libjpeg62-turbo \
                         libicu63 \
                         chromium-common \
                         chromium \
                         chromium-l10n
}

case "$1" in
    install)
        install
        ;;
    uninstall)
        uninstall
        ;;
    *)
        echo "Usage: $0 {install|uninstall}"
        exit 1
esac
