PVector location;
PVector velocity;
int boxSize = 200;

void setup() {
  size(640,360, P3D);
  // location of centre of ball defined by centre of box
  location = new PVector(0, 0, -15);
  velocity = new PVector(2.5, 3.5, 5);
  background(0);
  lights();
}
 
void draw() {
  background(0);
  translate(width/2, height/2, 0);
  noFill();
  stroke(255);
  box(boxSize);
  // drawing the ball using centre of box as 0
  fill(175);
  noStroke();
  translate(location.x, location.y, location.z);
  sphere(10);
  
  location.add(velocity);
  if ((location.x > boxSize/2) || (location.x < -boxSize/2)) {
    velocity.x = -velocity.x;
  }
  if ((location.y > boxSize/2) || (location.y < -boxSize/2)) {
    velocity.y = -velocity.y;
  }
  if ((location.z > boxSize/2) || (location.z < -boxSize/2)) {
    velocity.z = -velocity.z;
  }
}
