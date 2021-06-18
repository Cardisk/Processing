class Punto {
    
  int x, y;
  
  Punto() {
    x = 200;
    y = 0;
  }
  
  int getX() {
    return this.x;
  }
  
  int getY() {
    return this.y;
  }
  
  void setY(int y) {
    this.y = y;
  }
  
  void updateX() {
    this.x++;
  }
}
