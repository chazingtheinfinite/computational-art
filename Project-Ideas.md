



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
