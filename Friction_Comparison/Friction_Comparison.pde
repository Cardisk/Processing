/*
  Create pockets of friction in Processing sketch so that objects only experience friction
 when crossing over those pockets. What if you vary the strength (friction coefficient) of
 each area? What if you make some pockets feature the opposite of friction - i.e., when
 you enter a given pocket you actually speed up instead of slowing down?
 
 */

Mover[] movers = new Mover[4];
PVector[] frictions = new PVector[4];
PVector gravity = new PVector(0, 1);
float[] coefficients = new float[4];

void setup() {
  size(800, 600);

  coefficients[0] = 0.1;
  coefficients[1] = 0.3;
  coefficients[2] = 0.5;
  coefficients[3] = -0.01;

  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover((200 * i) + 100, 50, 10);
  }
}

void draw() {
  background(255);

  stroke(0);
  strokeWeight(2);
  line(200, 0, 200, 600);
  line(400, 0, 400, 600);
  line(600, 0, 600, 600);

  for (int i = 0; i < movers.length; i++) {

    for (int j = 0; j < movers.length; j++) {
      frictions[j] = movers[j].velocity.copy();
      frictions[j].normalize();
      frictions[j].mult(-1);
      frictions[j].mult(coefficients[j]);
    }

    movers[i].applyForce(frictions[i]);
    movers[i].applyForce(gravity);
    movers[i].update();
    movers[i].show();
    movers[i].checkEdges();
  }
}
