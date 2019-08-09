// Draw a Line + Make a PDF

import processing.pdf.*;

size(396, 612);
beginRecord(PDF, "page_1.pdf");
background(255);
line(100, 100, 296, 512);
endRecord();
