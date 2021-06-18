import java.util.Random;

class Walker {

  float x, y;

  Walker(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void step() {
    Random r = new Random();

    float xLoc = (float) r.nextGaussian();
    float yLoc = (float) r.nextGaussian();
    
    float stdDev = 1;
    float mean = 0;
    
    float p = random(1);
    if(p < 0.25) x += (stdDev * xLoc) + mean;
    else if(p < 0.50) x -= (stdDev * xLoc) + mean;
    else if(p < 0.75) y += (stdDev * yLoc) + mean;
    else y -= (stdDev * yLoc) + mean;
  }

  void show() {
    stroke(255);
    point(x, y);
  }
}
