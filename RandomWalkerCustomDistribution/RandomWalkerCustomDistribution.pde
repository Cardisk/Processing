/*
  Use a custom probability distribution to vary the size of a step taken by the random walker.
 The step size can be determined by influencing the range of values picked.
 Can you map the probability exponentially, i.e. making the likelihood that a value is picked equal to the value squared?
 ()
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
