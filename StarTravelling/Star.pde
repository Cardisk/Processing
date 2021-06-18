class Star {

  float x, y, z, lastZ;
  
  Star() {
    x = random(-width / 2, width / 2);
    y = random(-height / 2, height / 2);
    z = random(width / 2);
    lastZ = z;
  }
  
  void update() {
    z -= 4;
    if(z <= 0) {
      z = width / 2;
      x = random(-width / 2, width / 2);
      y = random(-height / 2, height / 2);
      lastZ = z;
    }
  }

  void show() {
    fill(255);
    noStroke();
    
    float newX = map(x / z, 0, 1, 0, width / 2);
    float newY = map(y / z, 0, 1, 0, height / 2);
    
    float r = map(z, 0, width / 2, 8, 0);
    ellipse(newX, newY, r, r);
    
    float prevX = map(x / lastZ, 0, 1, 0, width / 2);
    float prevY = map(y / lastZ, 0, 1, 0, height / 2);
    
    lastZ = z;
    
    stroke(255, 100);
    line(prevX, prevY, newX, newY);
  }

}
