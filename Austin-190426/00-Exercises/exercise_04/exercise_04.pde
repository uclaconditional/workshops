PGraphics layer;
int tool = 1;

void setup() {
  size(720, 480);
  layer = createGraphics(width, height);
  layer.beginDraw();
  layer.background(149, 222, 234);
  layer.endDraw();
}

void draw() {
  if (mousePressed) {
    layer.beginDraw();
    layer.noStroke();
    if (tool == 1) {
      tool1();
    } else if (tool == 2) {
      tool2();
    }
    layer.endDraw();
  }
  image(layer, 0, 0);
}

void tool1() {
  layer.strokeWeight(1);
  layer.stroke(0, 0, 0);
  layer.line(mouseX, mouseY, pmouseX, pmouseY);
}

void tool2() {
  layer.strokeWeight(12);
  layer.stroke(255, 255, 255);
  layer.line(mouseX, mouseY, pmouseX, pmouseY);
}

void keyPressed() {
  if (key == '1') {
    tool = 1;
  }
  if (key == '2') {
    tool = 2;
  }
}
