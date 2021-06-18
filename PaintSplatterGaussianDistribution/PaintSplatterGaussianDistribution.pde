/* 
  Consider a simulation of paint splatter drawn as a collection of colored dots. 
  Most of the paint clusters around a central location, but some dots do splatter out towards the edges.
  Can you use a normal distribution of random numbers to generate the locations of the dots?
  Can you also use a normal distribution of random numbers to generate a color palette? (Completato)
*/
import java.util.Random;

Random r;

void setup() {
  size(600, 500);
  background(0);
  colorMode(HSB);
  r = new Random();
}

void draw() {
  float xNum = (float) r.nextGaussian();
  float yNum = (float) r.nextGaussian();
  float cNum = (float) r.nextGaussian();
  
  float sd = 75;
  float xMean = width / 2;
  float yMean = height / 2;
  
  float x = sd * xNum + xMean;
  float y = sd * yNum + yMean;
  float hue = sd * cNum;
  
  noStroke();
  fill(hue, 255, 255);
  ellipse(x, y, 16, 16);
  
}
