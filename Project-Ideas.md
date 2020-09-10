

Idea: Explore the space of all possible songs; identify a suubset that may relate to human enjoyment; and autogenerate songs/patterns from that space
- Inspiration: https://youtu.be/DAcjV60RnRw
- The space of all possiible songs is massive, but there exists entiirely unexplore spaces that could give rise to new genres
- Computational musicology?


Idea: Add new spatial dimensions to traditionally 2D images.
- Creating a 3D sculpture/rendering of the dark matter in the universe from 2D images from the Hubble telescope
- Draw iinspiration from "scientist-designers" like Felice Frankel & Angela DePace
- https://felicefrankel.com/
- 

Given the importance of imagery in science, it is surprising that few scholars are properly trained in graphic design or data visualization. Visual Strategies aims to redress the balance in a format resembling a lavish 'Design 101' textbook — complete with tabs to ease navigation and a plastic cover suited to the wet lab. Felice Frankel and Angela DePace aim to guide scientists and engineers to create graphics that effectively communicate research results. Their case studies gain much from DePace's systems-biology research and Frankel's decades in science photography and image-making, which are showcased in books such as Envisioning Science: The Design and Craft of the Science Image (MIT Press, 2002).





Idea: Computer-Aided Design of furniture (https://www.pinterest.com/pin/158048268145587608/)
- Apply a "glitch-like" transform to a furniture piece
- Then build it out.



Idea: Automatically recreate images based only upon emojis.
Source: https://www.pinterest.com/Monkeylover9000/emoji-art/

- An image is broken down into square segements and the average colour of that segment is extracted
- All emojis are analyzed based on their colour content
- The closest matching emoji-colour for that segment is selected
- Process is repeated for all image segments

Idea - Using D3.js Human Motion Capture 
Source: https://mviz.omid.al/

Several Ideas: Leverage p5.js Examples
Source: https://p5js.org/examples/


Idea: Automating the Generation of Shape Wordclouds
Source: https://www.datacamp.com/community/tutorials/wordcloud-python


Idea: Generating 2D & 3D Lego Art from Images
Source: https://github.com/ryantimpe/brickr
Example Code:
library(brickr)

image <- ("/Users/alexluscombe/Dropbox/Camera Uploads/2015-11-14 13.57.03.png")

mosaic <- png::readPNG(image) %>%
  image_to_mosaic(img_size = 50) #Length of each side of mosaic in "bricks"

#Plot 2D mosaic
mosaic %>% build_mosaic()

#print 2d mosaic instructions
mosaic %>% build_instructions(40)

#print 2d mosaic recommended pieces
mosaic %>% build_pieces()




Artist Example Pages:
http://petrdevaikin.com/
