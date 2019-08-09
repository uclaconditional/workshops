// Three Lines + Variables

import processing.pdf.*;

size(396, 612);
beginRecord(PDF, "page_2.pdf");
background(255);
int y = 200;  // Try 0, 600, etc.
line(100, 100, 296, 512);
line(50, y, 296, 140);
line(296, y, 100, 400);
endRecord();
