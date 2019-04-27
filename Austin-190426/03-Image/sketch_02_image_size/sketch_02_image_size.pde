PImage img;

void setup() {
  size(720, 480);
  img = loadImage("pia22512.jpg"); 
}

void draw() {
  background(255);
  image(img, 50, 60, 200, 300);
  image(img, 250, 120, 500, 300);
}
