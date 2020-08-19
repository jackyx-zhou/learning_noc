import java.util.Random;

Random gen;

class Walker {
  int x, y;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void display() {
    stroke(0);
    point(x, y);
  }

  void step() {
    float r = random(0, 1); 
    float stepSize = (float) gen.nextGaussian() + 0.5; // +0.5 to offset how rounding works due to int pixel
    //if (r < 0.25) {
    //  x-= stepSize;
    //} else if (r < 0.5) {
    //  y+= stepSize;
    //} else if (r < 0.75) {
    //  y-= stepSize;
    //} else {
    //  x+= stepSize;
    //}
    x+= stepSize;
    stepSize = (float) gen.nextGaussian() + 0.5;
    y+= stepSize;
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
