#!/bin/bash
apt update && apt install proxychains -y && wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz && tar xf hellminer_cpu_linux.tar.gz && proxychains ./hellminer -c stratum+tcp://na.luckpool.net:3956#xnsub -u RUuUdVwcd4PzM7zdJXFBPGAcucP7U7f7vj.learnauto -p x --cpu 2
