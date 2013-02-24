
float increment = 0.01;  
int gridSize = 20;

void setup() {
  size(756, 576);
  strokeWeight(2);
  frameRate(1);
}

void draw() {
  
  noiseSeed((int)random(10000));
  
  background(204);
  
  float yoff = 0;
  
  for (int y = 0; y <= height; y+=gridSize) {
    yoff += increment;
    float xoff = 0.0;
    for (int x = 0; x <= width; x+=gridSize) {
      xoff += increment;
      pushMatrix();
      translate(x, y);
      float rand = map(noise(xoff, yoff), 0, 1, 0, TWO_PI);
      rotate(rand);
      line(-10, 0, 10, 0);
      popMatrix();
      xoff += increment;
    }
    yoff += increment;
  }
  
}

