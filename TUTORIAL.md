[![License CC BY-NC-SA 4.0](https://img.shields.io/badge/license-CC4.0-blue.svg)](https://raw.githubusercontent.com/NVIDIA/FastPhotoStyle/master/LICENSE.md)
![Python 2.7](https://img.shields.io/badge/python-2.7-green.svg)
![Python 3.6](https://img.shields.io/badge/python-3.6-green.svg)
## MUNIT Tutorial

In this short tutorial, we will guide you through setting up the system environment for running the MUNIT, which stands for multimodal unsupervised image-to-image translation, software and then show several usage examples.

### Background

Most of the existing unsupervised/unpaired image-to-image translation algorithms assume a unimodal mapping function between two image domains. That is for a given input image in domain A, the model can only map it to one corresponding image in domain B. This is undesired since in many cases the mapping function should be multimodal or many-to-many. For example, for an input summer image, a summer-to-winter translation model should be able to synthesize various winter images that would correspond to the input summer image. These images could differ in amount of snow accumulation but they all represent valid translations of the input image. In the most idea case, given an input image, an image translation model should be able to map the input image to a distribution of output image. This is precisely the goal of MUNIT. 

### Algorithm

<img src="https://raw.githubusercontent.com/NVlabs/MUNIT/master/docs/munit_assumption.jpg" width="800" title="Assumption"> 

MUNIT is based on the partially-shared latent space assumption as 