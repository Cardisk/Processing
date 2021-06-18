class Mover {

  PVector pos, vel, acc;
  float magnitude;
  float r = 16;
  float topSpeed = 10;
  final float DISTANCE = 200;

  Mover() {
    pos = new PVector(random(width), random(height));
    vel = new PVector(0, 0);
    acc = new PVector(0, 0);
  }

  void update() {
    float strength = 0;
    PVector mouse = new PVector(mouseX, mouseY);
    PVector direction = PVector.sub(mouse, pos);
    if(direction.mag() > DISTANCE) strength = 0.5;
    else strength = 0.1;
    direction.normalize();
    direction.mult(strength);
    
    acc = direction;
    vel.add(acc);
    vel.limit(topSpeed);
    pos.add(vel);
  }

  void show() {
    noStroke();
    fill(255);
    ellipse(pos.x, pos.y, r * 2, r * 2);
  }
}
