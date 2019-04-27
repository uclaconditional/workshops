PImage img;

void setup() {
  size(720, 480);
  // Place image in the "data" folder
  // in the sketch folder, see
  // Sketch > Show Sketch Folder
  img = loadImage("pia22512.jpg"); 
}

void draw() {
  image(img, 0, 0);
}
