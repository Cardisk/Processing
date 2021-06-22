class Mover {
 
  PVector location;
  PVector velocity = PVector.random2D();
  PVector acceleration = new PVector(0, 0);
  float mass;
  
  Mover(float x, float y, float mass) {
    location = new PVector(x, y);
    this.mass = mass;
  }
  
  void applyForce(PVector force) {
    PVector result = PVector.div(force, mass);
    acceleration.add(result);
  }
  
  void checkEdges() {
    if(location.y < (mass * 4) / 2) {
      location.y = (mass * 4) / 2;
      velocity.y *= -1;
    }
    if(location.y > height - ((mass * 4) / 2)) {
      location.y = height - ((mass * 4) / 2);
      velocity.y *= -1;
    }
    if(location.x < (mass * 4) / 2) {
      location.x = (mass * 4) / 2;
      velocity.x *= -1;
    }
    if(location.x > width - ((mass * 4) / 2)) {
      location.x = width - ((mass * 4) / 2);
      velocity.x *= -1;
    }
  }
  
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    
    acceleration.mult(0);
  }
  
  void show() {
    noStroke();
    fill(125, 125, 125);
    ellipse(location.x, location.y, mass * 4, mass * 4);
  }
  
}
