/*
  Extend the bouncing ball with vector example into 3D. Can you get a sphere to bounce around a box? (Completato)
 */

import peasy.PeasyCam;

PeasyCam cam;
PVector pos, vel;
float d = 200;
float radius = 16;

float angle = 0;
float increment = 0.001;

void setup() {
  size(600, 600, P3D);
  frameRate(60);

  cam = new PeasyCam(this, 350);

  pos = new PVector(-(d / 2) + (radius), -(d / 2) + (radius), -(d / 2) + (radius));
  vel = PVector.random3D();
}

void draw() {
  background(0);

  rotateY(angle);

  pos.add(vel);
  if (pos.x > (d / 2) - (radius) || pos.x < -(d / 2) + (radius)) vel.x *= -1;
  if (pos.y > (d / 2) - (radius) || pos.y < -(d / 2) + (radius)) vel.y *= -1;
  if (pos.z > (d / 2) - (radius) || pos.z < -(d / 2) + (radius)) vel.z *= -1;

  stroke(255);
  noFill();
  box(d);

  translate(pos.x, pos.y, pos.z); 

  lights();
  noStroke();
  fill(255);
  sphere(radius);

  angle += increment;
}
