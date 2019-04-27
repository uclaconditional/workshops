PImage img1;
PImage img2;

void setup() {
  size(1280, 720);
  // Place images in the "data" folder
  // in the sketch folder
  img1 = loadImage("pia22512.jpg"); 
  img2 = loadImage("pia22332.jpg");
}

void draw() {
  background(255);
  image(img1, 0, 30);
  image(img2, 640, 30);
}
