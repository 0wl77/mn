#!/bin/bash

apt-get -y update
apt-get -y upgrade
apt-get -y install software-properties-common
apt-add-repository -y ppa:bitcoin/bitcoin
apt-get -y install wget git unzip libevent-dev libboost-dev libboost-chrono-dev ibboost-filesystem-dev libboost-program-options-dev libboost-system-dev libboost-test-dev libboost-thread-dev libminiupnpc-dev
apt-get -y install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils libzmq3-dev nano mc
apt-get -y update
apt-get -y upgrade
apt-get -y install libdb4.8-dev
apt-get -y install libdb4.8++-dev
wget https://github.com/polispay/polis/releases/download/v1.5.2/poliscore-1.5.2-x86_64-linux-gnu.tar.gz
tar -xvf poliscore-1.5.2-x86_64-linux-gnu.tar.gz
rm /usr/local/bin/polis*
cp poliscore-1.5.2/bin/polis{d,-cli} /usr/local/bin/
