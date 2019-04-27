void setup() {
  size(720, 480);
}

void draw() {
  //background(204, 204, 204);
  if (mousePressed) {
    ellipse(mouseX, mouseY, 360, 360);
  }
}
