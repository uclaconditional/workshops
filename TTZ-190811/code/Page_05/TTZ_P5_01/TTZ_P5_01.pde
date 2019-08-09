// Random Line

import processing.pdf.*;

size(396, 612);
beginRecord(PDF, "page_5.pdf");
background(255);
float x = random(0, width);
float y = random(0, height);
line(width/2, height/2, x, y);
endRecord();
