PImage img;

void setup() {
  size(720, 480);
  // Place image in the "data" folder
  // in the sketch folder
  img = loadImage("pia22512.jpg"); 
}

void draw() {
  background(255);
  tint(204, 255, 0);
  image(img, 50, 60, 200, 300);
  tint(255, 255, 255, 102);
  image(img, 250, 120, 500, 300);
  image(img, 250, 220, 500, 300);
}
