#!/bin/bash

# swift ring

cd /etc/swift

for ring in object container account; do
    swift-ring-builder ${ring}.builder create 18 3 1
done

for x in $(seq 1 4); do
    for y in $(seq 1 4); do
        swift-ring-builder object.builder add z${x}-10.10.10.3${x}:6000/d00${y} 1
        swift-ring-builder container.builder add z${x}-10.10.10.3${x}:6001/d00${y} 1
        swift-ring-builder account.builder add z${x}-10.10.10.3${x}:6002/d00${y} 1
    done
done

for ring in object container account; do
    swift-ring-builder ${ring}.builder rebalance
done

rsync -vauc /etc/swift/*ring* /vagrant/ring/
