import java.util.Random;

Random gen;

class Walker {
  PVector position;

  Walker() {
    position = new PVector(width/2, height/2);
  }

  void display() {
    stroke(0);
    point(position.x, position.y);
  }

  void step() {
    float vx = random(-2, 2);
    float vy = random(-2, 2);
    x += vx;
    y += vy;
    
    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }
}

Walker w;

void setup() {
  gen = new Random();
  size(640, 360);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}
