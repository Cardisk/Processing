/*
  Using forces, simulate a helium-filled balloon floating upward and bouncing off the top of a window. (Completato)
  Can you add a wind force that changes over time, perhaps according to Perlin Noise? (Completato)
  
*/

Balloon balloon;
PVector helium = new PVector(0, -0.3);
float inc = 0.005;
float xOff = 0;
float time = 0;

void setup() {
  size(800, 600);
  balloon = new Balloon();
}

void draw() {
  background(178, 255, 255);
  PVector wind = new PVector(noise(xOff, time), 0);
  balloon.applyForce(helium);
  
  if(random(1) <= 0.5) wind.x *= -1;
  
  balloon.applyForce(wind);
  balloon.update();
  balloon.checkEdges();
  balloon.show();
  xOff += inc;
  time += inc * 3;
}
