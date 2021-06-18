/*
  Create a simulation of a car (or runner) that accelerates when you press the up key 
  and brakes when you press the down key. (Completato)
 */

Mover m;
boolean moving = false;

void setup() {
  size(600, 400);
  m = new Mover(width / 2, height / 2);
}

void keyPressed() {
  switch(keyCode) {
  case UP:
    moving = true;
    break;

  case DOWN:
    moving = false;
    break;
  }
}

void draw() {
  background(0);

  m.update(moving);
  m.show();
}
