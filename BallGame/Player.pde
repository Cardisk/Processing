class Player {

  PVector pos;
  float r = 20;
  
  Player() {
    pos = new PVector(RES[0], c.get(0).pos.y);
  }

  void update() {
    
  }

  void show() {
    noStroke();
    fill(200, 100, 90);
    ellipse(pos.x, pos.y, r * 2, r * 2);
  }
}
