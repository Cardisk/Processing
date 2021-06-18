/*
  Try implementing the above example with a variable magnitude of acceleration, stronger when it is
  either closer or farther away. (Completato)
*/
Mover m;

void setup() {
  size(1000, 700);
  m = new Mover();
}

void draw() {
  background(0);
  m.update();
  m.show();
}
