PImage selector;
int sx = 728;
int sy = 6;
color scolor;

PGraphics drawlayer;

void setup() {
  size(760, 480);
  drawlayer = createGraphics(720, 480);
  drawlayer.beginDraw();
  drawlayer.background(255, 255, 255);
  drawlayer.endDraw();
  selector = loadImage("colors.png");
  scolor = color(0, 0, 0);
  background(255, 255, 255);
}

void draw() {
  background(51, 51, 51);
  
  drawlayer.beginDraw();
  if (mousePressed) {
    drawlayer.strokeWeight(4);
    drawlayer.stroke(scolor);
    drawlayer.line(mouseX, mouseY, pmouseX, pmouseY);
  }
  drawlayer.endDraw();
  image(drawlayer, 0, 0);
  
  // Draw the color selector
  image(selector, sx, sy);
}

void keyPressed() {
  if (key == ' ') {
    drawlayer.save("test-" + nf(frameCount, 4) + ".png");
  }
}

void mousePressed() {
  if (overSelector()) {
    scolor = selector.get(mouseX-sx, mouseY-sy);
  }
}

boolean overSelector() {
  if (mouseX > sx && mouseX < sx+selector.width && 
      mouseY > sy && mouseY < sy+selector.height) {
    return true;
  } else {
    return false;
  }
}
