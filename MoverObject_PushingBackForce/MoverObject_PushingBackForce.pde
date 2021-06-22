/*
  Instead of object bouncing off the edge of the wall, create an example in which an invisible force pushes back
  on the objects to keep them in the window. Can you weight the force according to how far the object is from an edge
  i.e., the closer it is, the stronger the force? (Completato)

*/

Mover ball;
PVector gravity = new PVector(0, 0.3);
PVector wind = new PVector(0.1, 0);

void setup() {
  size(800, 600);
  ball = new Mover(width / 2, height / 2, 20);
}

void pushBack() {
  PVector xPush;
  PVector yPush;
  
  if((width - ball.location.x) < (width / 8)) {
    xPush = new PVector(map(width - ball.location.x, 0, (width / 8) - 1, -5, -10), 0);
    ball.applyForce(xPush);
  }
  if(ball.location.x < (width / 8)) {
    xPush = new PVector(map(width - ball.location.x, 0, (width / 8) - 1, 5, 10), 0);
    ball.applyForce(xPush);
  }
  
  if((height - ball.location.y) < (height / 8)) {
    yPush = new PVector(0, map(height - ball.location.y, 0, (height / 8) - 1, -5, -10));
    ball.applyForce(yPush);
  }
  if(ball.location.y < (height / 8)) {
    yPush = new PVector(0, map(height - ball.location.y, 0, (height / 8) - 1, 5, 10));
    ball.applyForce(yPush);
  }
}

void draw() {
  background(255);
  ball.applyForce(gravity);
  ball.applyForce(wind);
  pushBack();
  ball.update();
  ball.show();
}
