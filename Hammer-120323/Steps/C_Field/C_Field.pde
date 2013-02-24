
int gridSize = 20;

void setup() {
  size(756, 576);
  strokeWeight(2);
}

void draw() {

  background(204);
  
  for (int y = 0; y <= height; y+=gridSize) {
    for (int x = 0; x <= width; x+=gridSize) {
      line(x-5, y, x+5, y);
      line(x, y-5, x, y+5);
    }
  }
  
}

