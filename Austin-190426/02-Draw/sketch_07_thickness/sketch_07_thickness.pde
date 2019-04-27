void setup() {
  size(720, 480);
  background(176, 176, 176);
}

void draw() {
  if (mousePressed) {
    float thick = dist(mouseX, mouseY, pmouseX, pmouseY);
    strokeWeight(thick);
    stroke(0, 0, 0);
    line(mouseX, mouseY, pmouseX, pmouseY);  
  }
}
