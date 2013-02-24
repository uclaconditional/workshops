
int gridSize = 20;

void setup() {
  size(756, 576);
  strokeWeight(2);
  frameRate(1);
}

void draw() {

  background(204);
  
  for (int y = 0; y <= height; y+=gridSize) {
    for (int x = 0; x <= width; x+=gridSize) {
      pushMatrix();
      translate(x, y);
      float rand = random(TWO_PI);
      rotate(rand);
      line(-10, 0, 10, 0);
      popMatrix();
    }
  }
  
}

