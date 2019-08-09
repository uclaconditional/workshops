// Draw lines

void setup() {
  size(396, 612);
  background(255);
}

void draw() {
  if (mousePressed) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}
