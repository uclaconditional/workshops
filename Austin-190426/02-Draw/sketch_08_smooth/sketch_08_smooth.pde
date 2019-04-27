float thick = 1;

void setup() {
  size(720, 480);
  background(176, 176, 176);
}

void draw() {
  if (mousePressed) {
    float targetThick = dist(mouseX, mouseY, pmouseX, pmouseY);
    thick += (targetThick - thick) * 0.05;
    strokeWeight(thick);
    stroke(0, 0, 0);
    line(mouseX, mouseY, pmouseX, pmouseY);  
  }
}
