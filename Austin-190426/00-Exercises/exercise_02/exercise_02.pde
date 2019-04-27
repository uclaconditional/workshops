color c1 = color(51, 51, 51);
color c2 = color(204, 204, 204);

void setup() {
  size(1280, 720);
  background(255, 255, 255);
}

void draw() {
  if (mousePressed) {
    float d = dist(mouseX, mouseY, pmouseX, pmouseY);
    noStroke();
    fill(c1);
    ellipse(mouseX, mouseY, d, d); 
  } else {
    noStroke();
    fill(c2);
    ellipse(mouseX, mouseY, 3, 3);
  }
}

void keyPressed() {
  if (key == '1') {
    // Do something here 
  } else if (key == '2') {
    // Do something here
  }
}
