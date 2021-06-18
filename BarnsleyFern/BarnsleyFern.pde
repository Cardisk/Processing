float x, y;
float hu = 0;

void setup() {
  size(600, 500);
  colorMode(HSB);
  background(0);
}

void draw() {
  for (int i = 0; i < 100; i++) {
    drawPoint();
    nextPoint();
  }

  float t = random(1);
  if (t < 0.5) {
    hu += 0.1;
    if (hu > 255) {
      hu = 0;
    }
  }
}

void nextPoint() {
  float p = random(1);
  float nextX, nextY;

  if (p < 0.01) {
    nextX = 0;
    nextY = 0.16 * y;
  } else if (p < 0.86) {
    nextX = 0.85 * x + 0.04 * y;
    nextY = -0.04 * x + 0.85 * y + 1.6;
  } else if (p < 0.93) {
    nextX = 0.2 * x - 0.26 * y;
    nextY = 0.23 * x + 0.22 * y + 1.6;
  } else {
    nextX = -0.15 * x + 0.28 * y;
    nextY = 0.26 * x + 0.24 * y + 0.44;
  }

  x = nextX;
  y = nextY;
}

void drawPoint() {
  stroke(hu, 255, 255);
  float px = map(x, -2.1820, 2.6558, 0, width);
  float py = map(y, 0, 9.9983, height, 0);
  point(px, py);
}
