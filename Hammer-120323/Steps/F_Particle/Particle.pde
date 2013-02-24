/**
 *
 * PARTICLE
 *
 */
 
class Particle {

  // The usual stuff
  PVector location;
  PVector velocity;
  PVector acceleration;
  float r;
  float maxforce;    // Maximum steering force
  float maxspeed;    // Maximum speed
  color c;
  float alpha = 255;

  Particle(PVector l, float ms, float mf, float minrad, float maxrad) {
    location = l.get();
    r = random(minrad, maxrad);
    maxspeed = ms;
    maxforce = mf;
    acceleration = new PVector(0, 0);
    velocity = new PVector(0, 0);
    setColor();
  }

  void setColor() {
    if (colorMode == 1) {
      alpha = 255;
      c = color(0);
    } 
    else if (colorMode == 2) {
      alpha = 255;
      if (random(1) > 0.5) {
        c = color(255);
      } 
      else {
        c = color(0);
      }
    } 
    else {
      alpha = 204;
      int rpick = int(random(5));
      c = colors[rpick];
    }
  }

  void run() {
    update();
    borders();
  }

  void display() {
    displayParticle();
  }

  // Implementing Reynolds' flow field following algorithm
  // http://www.red3d.com/cwr/steer/FlowFollow.html
  void follow(FlowField flow) {
    // What is the vector at that spot in the flow field?
    PVector desired = flow.lookup(location);
    // Scale it up by maxspeed
    desired.mult(maxspeed);
    // Steering is desired minus velocity
    PVector steer = PVector.sub(desired, velocity);
    steer.limit(maxforce);  // Limit to maximum steering force
    applyForce(steer);
  }

  void applyForce(PVector force) {
    // We could add mass here if we want A = F / M
    acceleration.add(force);
  }

  // Method to update location
  void update() {
    // Update velocity
    velocity.add(acceleration);
    // Limit speed
    velocity.limit(maxspeed);
    location.add(velocity);
    // Reset accelertion to 0 each cycle
    acceleration.mult(0);
  }

  void displayParticle() {
    // Draw a triangle rotated in the direction of velocity
    float theta = velocity.heading2D() + HALF_PI;

    float rr = r * scalar;

    pushMatrix();
    translate(location.x, location.y);
    rotate(theta);

    if (graphicsMode == 1) {

      stroke(c, alpha);
      strokeCap(ROUND);
      strokeWeight(rr);
      point(0, 0);
    } 
    else if (graphicsMode == 2) { 

      stroke(c, alpha);
      strokeWeight(rr/4.0);
      strokeCap(SQUARE);
      stroke(c);
      line(-rr, 0, rr, 0);
    } 
    else if (graphicsMode == 3) {

      noStroke();
      fill(c, alpha);
      beginShape(TRIANGLES);
      vertex(0, -rr);
      vertex(-rr/2, rr);
      vertex(rr/2, rr);
      endShape();
    }

    popMatrix();
  }

  // Wraparound
  void borders() {
    if (location.x < -r) location.x = width+r;
    if (location.y < -r) location.y = height+r;
    if (location.x > width+r) location.x = -r;
    if (location.y > height+r) location.y = -r;
  }
}

