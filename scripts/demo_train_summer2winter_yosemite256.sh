#!/bin/bash
rm datasets/summer2winter_yosemite256 -p
mkdir datasets/summer2winter_yosemite256 -p
axel -n 1 https://people.eecs.berkeley.edu/~taesung_park/CycleGAN/datasets/summer2winter_yosemite.zip --output=datasets/s