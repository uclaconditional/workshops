
int gridSize = 20;

void setup() {
  size(756, 576);
  strokeWeight(2);
}

void draw() {

  background(204);
  
  for (int x = 0; x <= width; x+=gridSize) {
    line(x, height/2-20, x, height/2+20); 
  }
  
}

