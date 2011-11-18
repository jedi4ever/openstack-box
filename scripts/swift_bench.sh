#!/bin/bash

# swift bench

swauth-prep -A http://127.0.0.1:8080/auth/ -K swauthkey
swauth-add-user -A http://127.0.0.1:8080/auth/ -a -K swauthkey test tester testing

cat >/tmp/swift-bench.conf <<EOF
[bench]
auth = http://127.0.0.1:8080/auth/v1.0
concurrency = 10
delete = yes
key = testing
num_gets = 10000
num_objects = 1000
object_size = 1000
user = test:tester
EOF
swift-bench /tmp/swift-bench.conf
