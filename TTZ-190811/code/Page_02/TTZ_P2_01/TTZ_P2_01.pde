// Three Lines

import processing.pdf.*;

size(396, 612);
beginRecord(PDF, "page_2.pdf");
background(255);
line(100, 100, 296, 512);
line(50, 200, 296, 140);
line(296, 200, 100, 400);
endRecord();
