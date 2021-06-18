import peasy.*;

float sigma = 10.0;
float beta = 8.0 / 3.0;
float rho = 28.0;

float dt = 0.01;
float x = 0.01, y = 0, z = 0;

float angle = 0;

ArrayList<PVector> points = new ArrayList();

PeasyCam cam;

void setup() {
  size(600, 600, P3D);
  frameRate(60);
  colorMode(HSB);
  cam = new PeasyCam(this, 600);
}

void draw() {
  background(0);

  float dx = (sigma * (y - x)) * dt;
  float dy = (x * (rho - z) - y) * dt;
  float dz = (x * y - beta * z) * dt;

  x += dx;
  y += dy;
  z += dz;

  points.add(new PVector(x, y, z));

  translate(0, 0, -75);
  scale(5);
  stroke(255);
  noFill();

  rotateY(angle);
  angle -= 0.01;

  float hu = 0;
  beginShape();
  for (PVector v : points) {
    stroke(hu, 255, 255);
    vertex(v.x, v.y, v.z);

    hu += 0.1;
    if (hu > 255) {
      hu = 0;
    }
  }
  endShape();
}
