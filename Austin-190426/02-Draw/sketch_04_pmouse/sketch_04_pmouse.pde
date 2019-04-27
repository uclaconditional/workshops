void setup() {
  size(720, 480);
  strokeWeight(6);
}

void draw() {
  //background(204, 204, 204);
  if (mousePressed) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
