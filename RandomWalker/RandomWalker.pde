/* 
  Create a random walker that has a tendency to move down and to the right. (Completato)
  
  Create a random walker that has a 50% chance of moving in the direction of the mouse (Completato)
  
  1 - Find something you've previously made in processing using separate x and y variables and use PVectors insted.
  2 - Take one of the walker examples from the introduction and convert it to use PVectors. (Completati)
*/

Walker w;

void setup() {
  size(600, 400);
  background(0);
  w = new Walker(width / 2, height / 2);
}

void draw() {
  w.step();
  w.show();
}
