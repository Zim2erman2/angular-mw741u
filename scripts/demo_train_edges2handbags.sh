#!/bin/bash
rm datasets/edges2handbags -rf
mkdir datasets/edges2handbags -p
axel -n 1 https://people.eecs.berkeley.edu/~tinghuiz/projects/pix2pix/datasets/edges2handbags.tar.gz --output=d