class Mover {
 
  PVector pos, vel, acc;
  float topSpeed = 10;
  float r = 16;
  
  Mover(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(0, 0);
    acc = new PVector(0.005, 0);
  }
  
  void update(boolean moving) {
    if(moving) {
      vel.add(acc);
    }
    else {
      vel.mult(0);
    }
    vel.limit(topSpeed);
    pos.add(vel);
    
    if(pos.x > (width + r)) pos.x = -r;
  }
  
  void show() {
    noStroke();
    fill(255);
    ellipse(pos.x, pos.y, r * 2, r * 2);
  }
  
}
