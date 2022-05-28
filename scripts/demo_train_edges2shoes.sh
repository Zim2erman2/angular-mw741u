#!/bin/bash
rm datasets/edges2shoes -rf
mkdir datasets/edges2shoes -p
axel -n 1 https://people.eecs.berkeley.edu/~tinghuiz/projects/pix2pix/datasets/edges2shoes.tar.gz --output=datasets/edges2shoes/edges2shoes.tar.gz
tar -zxvf datasets/edges2shoes/edges2shoes.tar.gz -C datasets
mkdir datasets/edges2shoes/train1 -p
mkdir datasets/edges2shoes/train0 -p
mkdir datasets/edges2shoes/test1 -p
mkdir datasets/edges2shoes/test0 -p
for f in datasets/edges2shoes/train/*; do convert -quality 100 -crop 50%x100% +r