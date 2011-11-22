#!/bin/bash

# 5x 100mb loopback xfs filesystems for the vm

for n in {1..4}; do
    lb=$(printf "d%03d" $n)
    if [ -z "$(cat /proc/mounts | grep $lb)" ]; then
        [ ! -f /mnt/$lb ] && \
            dd if=/dev/zero of=/mnt/$lb bs=1024 count=0 seek=100000 && \
            mkfs.xfs -f -i size=1024 /mnt/$lb
        [ ! -d /srv/node/$lb ] && \
            mkdir -p /srv/node/$lb
        [ -z $(cat /etc/fstab | grep $lb) ] && \
            echo "/mnt/$lb /srv/node/$lb xfs \
                loop,noatime,nodiratime,nobarrier,logbufs=8 0 0" \
            | tee -a /etc/fstab
        mount /mnt/$lb
    fi
done

chown -R swift:swift /srv/node/*
