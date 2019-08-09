// Many Lines with a Loop

import processing.pdf.*;

size(396, 612);
beginRecord(PDF, "page_3.pdf");
background(255);
// for (init; test; update) 
for (int x = 100; x < width; x += 10) {
  line(x, 100, x + 196, 512);
}
endRecord();
