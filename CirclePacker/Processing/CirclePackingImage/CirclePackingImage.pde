// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain
// Code for: https://youtu.be/ERQcYaaZ6F0
import processing.pdf.*;
import processing.svg.*;

ArrayList<Circle> circles;
ArrayList<PVector> spots;
PImage img;
PGraphics pdf;
PGraphics svg;
String saveBase;
String saveFormat;

void setup() {
  // Image Specific Values
  saveFormat = "svg"; // or "pdf"
  saveBase = "dragonfly" + "_" + year() + "-" + month() + "-" + day() + "_" + hour() + "-" + minute() + "-" + second() + "." + saveFormat;
  size(1287, 1121);
  img = loadImage("dragonfly.png");
  
  if (saveFormat == "pdf"){
    beginRecord(PDF, saveBase);
    pdf = createGraphics(1287, 1121, PDF, "dragonfly" + "_" + year() + "-" + month() + "-" + day() + "_" + hour() + "-" + minute() + "-" + second() + ".pdf");
    pdf.beginDraw();
    pdf.background(0, 0, 0);
  } else {
    svg = createGraphics(1287, 1121, SVG, "dragonfly" + "_" + year() + "-" + month() + "-" + day() + "_" + hour() + "-" + minute() + "-" + second() + ".svg");
    svg.beginDraw();
    svg.background(0, 0, 0);
  }
  
  spots = new ArrayList<PVector>();
  img.loadPixels();
  for (int x = 0; x < img.width; x++){
    for (int y = 0; y < img.height; y++){
      int index = x + y * img.width;
      color c = img.pixels[index];
      float b = brightness(c);
      if (b < 50){ // Only where it is black!
        spots.add(new PVector(x,y));
      }
    }
  }
    println(spots.size());
  // Some exception catching to avoid crashes
  if (spots.size() < 1){
    println("No available spots. Quitting!");
    System.exit(0);
  }
  circles = new ArrayList<Circle>();
}

void draw() {
  background(0);

  int total = 10;
  int count = 0;
  int attempts = 0;

  while (count <  total) {
    Circle newC = newCircle();
    if (newC != null) {
      circles.add(newC);
      count++;
    }
    attempts++;
    if (attempts > 1000) {
      noLoop();
      //Save the image
      println("Saving image: " + saveBase);
      if (saveFormat == "pdf"){
        for (Circle c : circles) {
          pdf.ellipse(c.x, c.y, c.r*2, c.r*2);
        }
        pdf.dispose();
        pdf.endDraw();
      } else {
        for (Circle c : circles) {
          svg.ellipse(c.x, c.y, c.r*2, c.r*2);
        }
        svg.dispose();
        svg.endDraw();
      }
      println("FINISHED");
      break;
    }
  }


  for (Circle c : circles) {
    if (c.growing) {
      if (c.edges()) {
        c.growing = false;
      } else {
        for (Circle other : circles) {
          if (c != other) {
            float d = dist(c.x, c.y, other.x, other.y);
            if (d - 2 < c.r + other.r) {
              c.growing = false;
              break;
            }
          }
        }
      }
    }
    c.show();
    c.grow();
  }
}

Circle newCircle() {
  int r = int(random(0, spots.size()));
  PVector spot = spots.get(r);
  float x = spot.x;
  float y = spot.y;

  boolean valid = true;
  for (Circle c : circles) {
    float d = dist(x, y, c.x, c.y);
    if (d < c.r + 1) {
      valid = false;
      break;
    }
  }

  if (valid) {
    int index = int(x) + int(y) * img.width;
    //color col = img.pixels[index];
    return new Circle(x, y, 255);
  } else {
    return null;
  }
}
