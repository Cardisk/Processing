class Balloon {
 
  int w = 70;
  int h = 80;
  PVector location = new PVector(random(w, width), random(height - (height / 6), height - (h / 2)));
  PVector velocity = new PVector(0, 0);
  PVector acceleration = new PVector(0, 0);
  
  Balloon() {}
  
  void applyForce(PVector force) {
    acceleration.add(force);
  }
  
  void checkEdges() {
    if(location.y < h / 2) {
      location.y = h / 2;
      velocity.y *= -0.65;
    } 
    if(location.x < w / 2) {
      location.x = w / 2;
      velocity.x *= -0.45;
    }
    if(location.x > width - (w / 2)) {
      location.x = width - (w / 2);
      velocity.x *= -0.45;
    }
  }
  
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void show() {
    noStroke();
    fill(255, 60, 0);
    ellipseMode(CENTER);
    ellipse(location.x, location.y, w, h);
  }
  
}
