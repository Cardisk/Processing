/*
  The PVector v = 1, 5
  The PVector u = v mult 2
  The PVector w = v sub u
  The PVector w = w div 3
  
  (Completato)
*/
PVector v = new PVector(1, 5);
PVector u, w;

void setup() {
  size(100, 100);
  background(0);
  
  u = PVector.mult(v, 2);
  w = PVector.sub(v, u);
}

void draw() {
  println(v.x + " " + v.y);
  
  println(u.x + " " + u.y);
  
  println(w.x + " " + w.y);
  w.div(3);
  println(w.x + " " + w.y);
  
  noLoop();
}
