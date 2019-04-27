String videoPrefix = "cube-12fps-";
int totalFrames = 12;
PImage videoFrame;

String drawingPrefix = "animation-";
PImage drawing;

int currentFrame = 0;
boolean showVideo = true;

PGraphics d;  // Drawing layer

void setup() {
  size(720, 480);
  d = createGraphics(width, height);
  loadFrame();
  loadDrawing();
}

void draw() {
  background(153);
  if (showVideo) {
    image(videoFrame, 0, 0, width, height);
  }
  d.beginDraw();
  d.stroke(0);
  d.strokeWeight(3);
  if (mousePressed) {
    d.line(mouseX, mouseY, pmouseX, pmouseY);
  }
  d.endDraw();
  image(d, 0, 0, width, height);
}

void keyPressed() {
  if (key == ' ' ) {
    showVideo = !showVideo;
  }
  if (key == CODED) {
    if (keyCode == LEFT) {  // Left arrow key
      saveAnimationFrame();
      currentFrame--;
      if (currentFrame < 0) {
        currentFrame = totalFrames - 1;
      }
      loadFrame();
      loadDrawing();
    } else if (keyCode == RIGHT) {  // Right arrow key
      saveAnimationFrame();
      currentFrame++;
      if (currentFrame >= totalFrames) {
        currentFrame = 0;
      }
      loadFrame();
      loadDrawing();
    }
  }
}

void saveAnimationFrame() {
  d.save(drawingPrefix + nf(currentFrame, 4) + ".png");
  // Clear the drawing layer
  d.beginDraw();
  d.clear();
  d.endDraw();
}

void loadFrame() {
  String filename = videoPrefix + nf(currentFrame, 4) + ".png";
  videoFrame = loadImage(filename);
  println(currentFrame + " / " + (totalFrames-1));
}

void loadDrawing() {
  try {
    String filename = drawingPrefix + nf(currentFrame, 4) + ".png";
    drawing = loadImage(filename);
    d.beginDraw();
    d.image(drawing, 0, 0, width, height);
    d.endDraw();
  } 
  catch (Exception e) {
    println("Computer says 'No!' " + e);
  }
}
