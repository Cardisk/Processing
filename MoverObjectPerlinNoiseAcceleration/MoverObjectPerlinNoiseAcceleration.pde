/*
  Referring back to the introduction, implement acceleration according to perlin noise. (Completato)
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
