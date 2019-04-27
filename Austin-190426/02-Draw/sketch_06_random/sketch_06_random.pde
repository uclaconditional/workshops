void setup() {
  size(720, 480);
  background(176, 176, 176);
}

void draw() {
  if (mousePressed) {
    noStroke();
    fill(0, 0, 0);
    float rx = random(-10, 10);
    float ry = random(-10, 10);
    ellipse(mouseX+rx, mouseY+ry, 6, 6);
  }
}
