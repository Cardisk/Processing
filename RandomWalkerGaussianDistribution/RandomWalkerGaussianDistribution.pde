/* 
  A Gaussian random walk is defined as one in which the step size (how far the object moves in a given direction)
  is generated with a normal distribution. Implement this variation of our random walk. ()
*/
Walker w;

void setup() {
  size(600, 500);
  background(0);
  w = new Walker(width / 2, height / 2);
}

void draw() {
  w.step();
  w.show();
}
