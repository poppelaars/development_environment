#!/bin/bash

set -x

if [ -f /etc/os-release ]; then
    source /etc/os-release
    DISTRO=$ID
else
    echo "Unsupported Disto.";
    exit 1
fi

if [ "$DISTRO" = "centos" ]; then
    sudo dnf update -y
    sudo dnf install -y \
        python3-pip \
        python3-build \
        python3-setuptools \
        python3-paramiko \
        python3-requests \
        ansible
    sudo ansible-galaxy collection install community.general
elif [ "$DISTRO" = "ubuntu" ]; then
    sudo apt update -y
    sudo apt install -y software-properties-common
    sudo add-apt-repository --yes --update ppa:ansible/ansible
    sudo apt install -y \
        python3-pip \
        python3-build \
        python3-setuptools \
        python3-paramiko \
        python3-requests \
        ansible
    sudo ansible-galaxy collection install community.general
else
    echo "Unsupported Disto.";
    exit 1
fi
