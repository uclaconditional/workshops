/**
 *
 * KEYBOARD
 *
 */

void keyPressed() {

  if (key == 'd' || key == 'D') {
    gridSize += 10;
    if (gridSize > 50) {
      gridSize = 10;
    }
    generateField();
  } 
  
  if (key == 'f' || key == 'F') {
    showField = !showField; 
  }
  
  if (key == 'p' || key == 'P') {
    showParticles = !showParticles; 
  }

  if (key == 'r' || key == 'R') {
    generateParticles();
  }

  if (key == ' ') {
    captureField = true;
  }
  
  if (key == '1') {
    graphicsMode = 1; 
  }
  if (key == '2') {
    graphicsMode = 2; 
  }
  if (key == '3') {
    graphicsMode = 3; 
  }
  
  if (key == '5') {
    colorMode = 1;
    for (Particle v : particles) {
      v.setColor();
    }
  }
  if (key == '6') {
    colorMode = 2;
    for (Particle v : particles) {
      v.setColor();
    }
  }
  if (key == '7') {
    colorMode = 3;
    for (Particle v : particles) {
      v.setColor();
    }
  }
  
  if (key == '=' || key == '+') {
    scalar += 0.1; 
  }
  if (key == '-' || key == '_') {
    scalar -= 0.1; 
  }
  scalar = constrain(scalar, 0.1, 2.0);

}

