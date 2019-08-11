// Random Line

import processing.pdf.*;

size(396, 612);
beginRecord(PDF, "page_5.pdf");
int r = int(random(255));
int g = int(random(255));
int b = int(random(255));
background(r, g, b);
int num = int(random(10, 1000));
for (int i = 0; i < num; i = i+1) {
  float x1 = random(0, width);
  float y1 = random(0, height);
  float x2 = random(0, width);
  float y2 = random(0, height);
  line(x1, y1, x2, y2);
}
endRecord();
