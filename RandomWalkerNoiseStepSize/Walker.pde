class Walker {

  float x, y;
  float off = 0;

  Walker(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void step() {
    float stepSize = map(noise(off), 0, 1, 0, 3);
    
    float p = random(1);
    if(p < 0.25) x += stepSize;
    else if(p < 0.5) y +=stepSize;
    else if(p < 0.75) x -= stepSize;
    else y -= stepSize;
    
    off += 0.01;
  }

  void show() {
    stroke(255);
    point(x, y);
  }
}
