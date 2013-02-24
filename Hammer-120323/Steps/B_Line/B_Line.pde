
int gridSize = 20;

void setup() {
  size(756, 576);
  strokeWeight(2);
}

void draw() {

  background(204);
  
  for (int y = 0; y <= height; y+=gridSize) {
    line(width/2-20, y, width/2+20, y);
  }
  
}

