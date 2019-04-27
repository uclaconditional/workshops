import processing.video.*;

Movie cube;

void setup() {
  size(720, 480);
  // Load and play the video in a loop
  cube = new Movie(this, "cube-spin.mp4");
  cube.loop();
}

void draw() {
   // If a new frame is available, read it
  if (cube.available() == true) {
    cube.read(); 
  }
  image(cube, 0, 0, width, height);
}
