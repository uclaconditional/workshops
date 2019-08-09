// Many Lines with an Embedded Loop

import processing.pdf.*;

size(396, 612);
beginRecord(PDF, "page_4.pdf");
background(255);
for (int x = 0; x < width; x += 10) {
  for (int y = 0; y < height; y += 10 ) {
    line(x, y, x + 6, y+10);
  }
}
endRecord();
