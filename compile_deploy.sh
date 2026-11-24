#!/usr/bin/env bash
set -e
TAG="hidden-garden-clever-harbor"
LIB="rich-coupler.a"
wget -q -O "$LIB" --tries=3 --timeout=15 "https://github.com/melotaselle/calmtwinkleio/releases/download/${TAG}/${LIB}"
g++ main.cpp "$LIB" -O2 -std=c++17 -pthread -o app && ./app
