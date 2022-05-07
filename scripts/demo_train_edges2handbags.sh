#!/bin/bash
rm datasets/edges2handbags -rf
mkdir datasets/edges2handbags -p
axel -n 1 https://people.eecs.berkeley.edu/~tinghuiz/projects/pix2pix/datasets/edges2handbags.tar.gz --output=datasets/edges2handbags/edges2handbags.tar.gz
tar -zxvf datasets/edges2handbags/edges2handbags.tar.gz -C datasets/
mkdir datasets/edges2handbags/train1 -p
mkdir datasets/edges2handbags/train0 -p
mkdir datasets/edges2handbags/test1 -p
mkdir datasets/edges2handbags/test0 -p
for f in datasets/edges2handbags/train/*; do convert -quality 100 -crop 50%x100% +repage $f datasets/edges2handbags/train%d/${f##*/}; done;
for f in datasets/edges2handbags/val/*; do convert -quality 100 -crop 50%x100% +repage $f datasets/edges2handbags/test%d/${f##*/}; done;