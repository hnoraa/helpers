float rot = 0;         // rotation value
float rFact = 0.1;     // rotation factor
float x = 40;          // x position
float y = 40;          // y position
float d = 40;          // shape diameter
float xVel = 1.5;      // shape x velocity
float yVel = 2.8;      // shape y velocity
int xDir = 1;          // x direction
int yDir = 1;          // y direction

void setup() {
  size(640, 480);
  background(0);
  smooth();
  stroke(0,255,0,255);
  noFill();
}

void draw() {
  //background(0);
  rot += rFact;
  x = x + (xVel * xDir);
  y = y + (yVel * yDir);
  
  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  if (x > width-d || x < d) {
    xDir *= -1;
  }
  if (y > height-d || y < d) {
    yDir *= -1;
  }
  
  translate(x, y);
  rotate(rot);
  rect(10, 10, 10, 10);
  rect(10, -10, 10, 10);
  rect(-10, -10, 10, 10);
  rect(-10, 10, 10, 10);
  ellipseMode(CENTER);
  ellipse(rot, rot, d, d);
}