/*
  Create a random walker where you map the result of the noise() function to a Walker's step size
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
