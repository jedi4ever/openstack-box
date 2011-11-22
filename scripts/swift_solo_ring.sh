#!/bin/bash

# swift ring

cd /etc/swift

for ring in object container account; do
    swift-ring-builder ${ring}.builder create 18 3 1
done

for x in $(seq 1 4); do
    swift-ring-builder object.builder add z${x}-10.10.10.20:6000/d00${x} 1
    swift-ring-builder container.builder add z${x}-10.10.10.20:6001/d00${x} 1
    swift-ring-builder account.builder add z${x}-10.10.10.20:6002/d00${x} 1
done

for ring in object container account; do
    swift-ring-builder ${ring}.builder rebalance
done
