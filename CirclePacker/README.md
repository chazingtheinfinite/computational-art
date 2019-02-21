### Circle Packing Algorithms

The concept of packing as many circles/spheres into a space has been studied readily by mathematicians, graph theorists, and computer scientists.
A brief overview of those efforts is captured [here](https://en.wikipedia.org/wiki/Circle_packing_theorem). 
Visualizing the results of applying circle packing algorithms in various shapes has incredible aesthetic appeal due to the regularity of the shape.

Here we consider a stochastic approach to circle packing wherein we randomly generate circles at certain positions that correspond to black pixels 
and permoit the circles to grow until they either contact the edge of the image or another circle. The stochastic nature of this approach ensures
that no two resulting image (given a sufficient number of seed postitions) will be the same as another (within reasonable time spans).

#### Possible Improvements
1) To enhance the complexity of these results, a simple solution could be to replace the circles with different mandalas resulting in a stochasitc patterning of mandalas and circles. If the intention is to have these resulting images laser cut, we would require a corpus of "cut out friendly" mandalas to select from randomly. A minimum sized circle would also be required to qualify for "mandala replacement" to ensure that the line strokes within the mandala are of sufficient size to maintain the integrity of the cut medium. A simple alternative is to simply laser engrave the results. 

2) Varying the grown shape to consider various regular polygons would increase the complexity of the result. We could change the circle shapes to other forms of polygons and have them randomly rotated to various orientations, however this does not necessarily guarantee that we will have a dense packing of shapes. It also makes the growth dynamics more complex due to the approach implemented to prevent shape intersection. A much higher chance of success is possible if we consider only polygons with n >= 5 sides since they can be roughly approximated as circles.
