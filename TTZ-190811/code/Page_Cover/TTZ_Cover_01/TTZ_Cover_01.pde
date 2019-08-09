// Cover with lines and text

import processing.pdf.*;

size(792, 612);  // Twice as wide
beginRecord(PDF, "cover.pdf");
background(255);

// Background pattern
for (int y = 0; y < height; y += 5) {
  float gradient = map(y, 0, height, 255, 0);
  stroke(gradient);
  line(0, height/2, width, y); 
}

// Cover text
PFont f = createFont("Times New Roman", 96);
textFont(f);
textAlign(LEFT, CENTER);
textLeading(100);
fill(0);
text("tiny\ntech\nzines", width * 0.6, height/2-30);

endRecord(); 
