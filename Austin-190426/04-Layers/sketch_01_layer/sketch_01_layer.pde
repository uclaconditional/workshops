PGraphics layer;

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
    layer.stroke(0, 0, 0);
    layer.line(mouseX, mouseY, pmouseX, pmouseY);
    layer.endDraw();
  }
  image(layer, 0, 0);
}
