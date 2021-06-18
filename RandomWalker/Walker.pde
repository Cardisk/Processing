class Walker {

  //int x, y;
  PVector pos;

  Walker(int x, int y) {
    //this.x = x;
    //this.y = y;
    pos = new PVector(x, y);
  }

  void step() {
    /*int choice = int(random(2));
     float p = random(1);
     
     if (p < 0.65) {
     if (choice == 0) {
     x++;
     } else {
     y++;
     }
     } else {
     if (choice == 0) {
     x--;
     } else {
     y--;
     }
     }*/

    float p;

    if (pos.x < mouseX) {
      p = random(1);
      if (p < 0.50) pos.x++; 
      else if (p < 0.66) pos.x--;
      else if (p < 0.82) pos.y++;
      else pos.y--;
    }

    if (pos.x > mouseX) {
      p = random(1);
      if (p < 0.50) pos.x--; 
      else if (p < 0.66) pos.x++;
      else if (p < 0.82) pos.y++;
      else pos.y--;
    }

    if (pos.y > mouseY) {
      p = random(1);
      if (p < 0.50) pos.y--; 
      else if (p < 0.66) pos.y++;
      else if (p < 0.82) pos.x--;
      else pos.x++;
    }

    if (pos.y < mouseY) {
      p = random(1);
      if (p < 0.50) pos.y++; 
      else if (p < 0.66) pos.y--;
      else if (p < 0.82) pos.x++;
      else pos.x--;
    }
  }

  void show() {
    stroke(255);
    point(pos.x, pos.y);
  }
}
