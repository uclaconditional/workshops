// Draw a Line + Make a PDF
// Drawing Properties (Stroke, Weight, etc.)

import processing.pdf.*;

size(396, 612);
beginRecord(PDF, "page_1.pdf");
background(85, 194, 247);
stroke(255);
strokeWeight(40);
strokeCap(SQUARE);
line(100, 100, 296, 512);
endRecord();
