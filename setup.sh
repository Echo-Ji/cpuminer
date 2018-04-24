#!/bin/bash
set -e

echo "./autogen.sh..."
./autogen.sh
echo "configure..."
sleep 2
./configure
echo "make..."
sleep 2
make
