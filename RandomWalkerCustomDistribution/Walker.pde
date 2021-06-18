class Walker {

  float x, y;

  Walker(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void step() {

    float num = montecarlo();
    
    float stepSize = map(num, 0, 1, 0, 5);

    float stepX = random(-stepSize, stepSize);
    float stepY = random(-stepSize, stepSize);

    x += stepX;
    y += stepY;
    /*float p = random(1);
    if(p < 0.25) x += stepX;
    else if(p < 0.5) x -= stepX;
    else if(p < 0.75) y += stepY;
    else y -= stepY;*/
  }

  void show() {
    stroke(255);
    point(x, y);
  }
}

float montecarlo() {
  while (true) {
    float r1 = random(1);
    float p = r1;

    float r2 = random(2);

    if (r2 < (p * p)) return r1;
  }
}
