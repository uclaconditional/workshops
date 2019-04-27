float angle = 0;

void setup() { 
  size(720, 480, P3D); 
  smooth(8);
  noStroke(); 
  colorMode(RGB, 1);
} 

void draw() { 
  background(0.5);

  pushMatrix(); 
  translate(width/2, height/2, 0); 
  rotateY(angle); 
  noFill();
  stroke(255, 255, 255);
  box(200);
  popMatrix();
  
  if (angle > HALF_PI) {
    exit(); 
  } else {
    saveFrame("cube-12fps-" + nf(frameCount, 4) + ".png"); 
  }
  
  angle += HALF_PI / 12.0;
} 
