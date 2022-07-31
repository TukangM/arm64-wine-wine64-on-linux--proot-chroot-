#!/bin/bash
echo This script will install box64 and wine64   FOR KALI LINUX NETHUNTER NOT FOR TERMUX PROOT    RUN AS ROOT!
read -p "Press enter to continue"
echo APT updating
echo $(sudo apt update)
echo Install python3 cmake build-essential git wget
echo $(sudo apt install python3 cmake build-essential git wget)
echo Cloning box64
echo $(git clone https://github.com/ptitSeb/box64)
echo Clone box64 done. now compiling box64 and install
cd && cd box64 && mkdir build && cd build && cmake  .. -DARM_DYNAREC=ON
echo $(cd ~/box64/build && make && make install)
read -p "Press enter to continue if not getting errors compiling cmake make and will install box64"
echo $(wget https://www.playonlinux.com/wine/binaries/phoenicis/upstream-linux-amd64/PlayOnLinux-wine-6.17-upstream-linux-amd64.tar.gz && mkdir wine64 && mv PlayOnLinux-wine-6.17-upstream-linux-amd64.tar.gz ~/wine64 && cd ~/wine64 && tar -xvf PlayOnLinux-wine-6.17-upstream-linux-amd64.tar.gz && rm -rf PlayOnLinux-wine-6.17-upstream-linux-amd64.tar.gz)

echo "export BOX86_PATH=~/wine/bin"
export BOX86_LD_LIBRARY_PATH=~/wine64/lib/i386-unix/:~/wine64/lib/wine/x86_64-unix/:/lib/i386-linux-gnu/:/lib/x86_64-linux-gnu:/lib/aarch64-linux-gnu/" >> /etc/profile
echo Now you can use box86 and box64 on arm64.
read -p "Press enter to exit"
