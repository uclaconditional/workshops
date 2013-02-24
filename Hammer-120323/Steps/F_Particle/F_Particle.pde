/**
 
 PRINT PAPER PROCESS: MARBLING AND TECHNOLOGY
 23 FEB 2013, HAMMER MUSEUM
 UCLA ARTS SOFTWARE STUDIO <http://software.arts.ucla.edu>
 (Based on code in Dan Shiffman's Nature of Code <http://natureofcode.com/>)
 
 Operate the program with the mouse, keyboard, or modify the code.
 
 Click to draw a new field
 Click right to draw a uniform field
 Click left to draw a scattered field
 
 BASIC USE
 Spacebar - save PDF
 
 MODIFY
 + - increase size
 - - descrease size
 R - reset particles
 D - density of field
 
 GRAPHICS
 1 - circles
 2 - lines
 3 - triangles
 
 COLOR
 5 - grays
 6 - contrast
 7 - color
 
 HIDE/REVEAL
 F - field hide
 P - particle hide
 
 */

// Add you name here
String name = "Your-Name-Here";

// Change the number of particles
int numParticles = 1; // Try up to 20000;

//

// More control over the desity of the grid
int gridSize = 20;

// These allow more control over the particle motion
float speedLow = 2;
float speedHigh = 5;
float forceLow = 0.1;
float forceHigh = 0.5;

// Set the initial size range of the particles
float minSize = 30;
float maxSize = 30;

// Change the colors for color mode (7)
// Click "Color Selector" from the Tools menu
color c1 = #8DD30D;
color c2 = #F0CE46;
color c3 = #70BDBF;
color c4 = #E3B0E3;
color c5 = #2079D1;

color[] colors = {c1, c2, c3, c4, c5};

color backgroundColor = #FFFFFF;

int smoothAmount = 8;  // Can be 0, 2, 4, 8


//

import processing.pdf.*; 

FlowField flowfield;  // FlowField object
ArrayList<Particle> particles;  // An ArrayList of Particles

float fieldDiff = 0.1;
boolean captureField = false;

int graphicsMode = 3;

boolean showField = true;
boolean showParticles = true;
int colorMode = 1;

float scalar = 1;

void setup() {
  size(756, 576, P2D);
  smooth(smoothAmount);
  generateField();
  generateParticles();
}

void generateParticles() {
  particles = new ArrayList<Particle>();
  for (int i = 0; i < numParticles; i++) {
    float rx = random(width);
    float ry = random(height);
    float speed = random(speedLow, speedHigh);
    float force = random(forceLow, forceHigh);
    particles.add(new Particle(new PVector(rx, ry), speed, force, minSize, maxSize));
  }
}

void generateField() {
  flowfield = new FlowField(gridSize);
}

void draw() {

  // Start creating the PDF
  if (captureField == true) {
    beginRecord(PDF, "Field-" + name + "-" + nf(frameCount, 8) + ".pdf");
  }

  // Make the background a solid color
  background(backgroundColor);

  // Draw the vector field
  if (showField) {
    flowfield.display();
  }

  // Tell all the Particles to follow the flow field
  if (showParticles) {
    for (Particle v : particles) {
      v.follow(flowfield);
      v.run();
      v.display();
    }
  }

  // Finish the PDF
  if (captureField == true) {
    endRecord();
    captureField = false;
  }
}

// Make a new flowfield
void mousePressed() {
  fieldDiff = map(mouseX, 0, width, 0.5, 0.01);
  flowfield.init();
}






