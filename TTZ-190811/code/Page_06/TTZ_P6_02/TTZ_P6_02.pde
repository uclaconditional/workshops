// Draw lines + Make a PDF

import processing.pdf.*;

void setup() {
  size(396, 612);
  background(255);
  beginRecord(PDF, "page_6.pdf");
}

void draw() {
  if (mousePressed) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void keyPressed() {
  endRecord(); 
  exit();
}
