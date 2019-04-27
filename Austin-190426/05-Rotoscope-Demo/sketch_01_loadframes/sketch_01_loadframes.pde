String filenamePrefix = "cube-12fps-";
int totalFrames = 12;
PImage frame;
int currentFrame = 0;

void setup() {
  size(720, 480);
  loadFrame();
}

void draw() {
  image(frame, 0, 0, width, height);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {  // Left arrow key
      currentFrame--;
      if (currentFrame < 0) {
        currentFrame = totalFrames - 1; 
      }
      loadFrame();
    } else if (keyCode == RIGHT) {  // Right arrow key
      currentFrame++;
      if (currentFrame >= totalFrames) {
        currentFrame = 0;
      }
      loadFrame();
    }
  } 
}

void loadFrame() {
  String filename = filenamePrefix + nf(currentFrame, 4) + ".png";
  frame = loadImage(filename);
  println(currentFrame + " / " + (totalFrames-1));
}
