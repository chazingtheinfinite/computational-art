# Computational Art

Developed by: Kevin Dick

This repository encapsulates an amalgam of experiments in computational art.

#### Software:
P5.js & Processing

---
### Experiments:

#### Circle Packing Algorithms
In this series of experiments, I explore one form of automated pattern techniques based on circle packing. Given a logical image I look to randomly select a pixel to serve as the center seed of a new circle. In each iteration, new seeds are selected and each existing circle is grown incrementally at a given rate. Once a circle "touches" another, we cease its growth. A small buffer is permitted to ensure that a few pixels of space lie between two adjacent circles. The program terminates after 1,000 attempts at randomly selecting a new seed point and failing. 

In essence, this is a wholly stochastic process with each iteration generating entirely new variants of the same image. Saving all images as vector graphics, we maintain perfect resolution of the image at all scales of zoom.

[![Circle Packing a Tree](https://gifs.com/gif/processing-circle-packing-of-a-tree-GvZzGL)](https://youtu.be/QRoSSNxVaiQ)
