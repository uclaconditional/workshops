color c = color(0, 0, 0);

void setup() {
  size(720, 480);
  strokeWeight(6);
  background(176, 176, 176);
}

void draw() {
  if (mousePressed) {
    stroke(c);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void keyPressed() {
  if (key == '1') {
    c = color(255, 255, 255); 
  } else if (key == '2') {
    c = color(0, 0, 0);
  }
}
