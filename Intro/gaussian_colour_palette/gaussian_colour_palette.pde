import java.util.Random;

Random gen;

void setup() {
  size(640, 360);
  gen = new Random();
}

void draw() {
  float xnum = (float) gen.nextGaussian();
  float xsd = 60;
  float xmean = 320;
  float x = xsd * xnum + xmean;
  
  //float ynum = (float) gen.nextGaussian();
  //float ysd = 30;
  //float ymean = 180;
  //float y = ysd * ynum + ymean;
  noStroke(); 
  
  float colour = map(xnum, -5, 5, 0, 255);
  fill(colour,30, 60, 10);
  
  ellipse(x,180,16,16);
}
