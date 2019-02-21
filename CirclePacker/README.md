### Circle Packing Algorithms

The concept of packing as many circles/spheres into a space has been studied readily by mathematicians, graph theorists, and computer scientists.
A brief overview of those efforts is captured [here](https://en.wikipedia.org/wiki/Circle_packing_theorem). 
Visualizing the results of applying circle packing algorithms in various shapes has incredible aesthetic appeal due to the regularity of the shape.

Here we consider a stochastic approach to circle packing wherein we randomly generate circles at certain positions that correspond to black pixels 
and permoit the circles to grow until they either contact the edge of the image or another circle. The stochastic nature of this approach ensures
that no two resulting image (given a sufficient number of seed postitions) will be the same as another (within reasonable time spans).
