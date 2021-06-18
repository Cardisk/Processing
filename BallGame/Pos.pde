class Pos {
 
  PVector pos;
  float r = 30;
  
  Pos(float x) {
    pos = new PVector(x, random(0 + r, height - r));
  }
  
  void update() {
    
  }
  
  void show() {
    noStroke();
    fill(255);
    ellipse(pos.x, pos.y, r * 2, r * 2);
  }
}
