// Random Line

import processing.pdf.*;

size(396, 612);
beginRecord(PDF, "page_5.pdf");
background(255);
for (int i = 0; i < 100; i++) {
  float x1 = random(0, width);
  float y1 = random(0, height);
  float x2 = random(0, width);
  float y2 = random(0, height);
  line(x1, y1, x2, y2);
}
endRecord();
