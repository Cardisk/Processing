float[][] grid;
int cols, rows;
int res = 10;

float hu = 0;

int w = 1500;
int h = 1500;

float flying = 0;

void setup() {
  size(600, 600, P3D);
  frameRate(60);
  colorMode(HSB);
  cols = w / 10;
  rows = h / 10;
  grid = new float[cols][rows];
}

void draw() {
  background(0);

  translate(0, height / 3);
  rotateX(PI / 3);

  float offY = 0;
  for (int i = 0; i < rows; i++) {
    float offX = flying;
    for (int j = 0; j < cols; j++) {
      grid[i][j] = map(noise(offX, offY), 0, 1, -100, 100);
      offX -= 0.1;
    }
    offY += 0.1;
  }

  stroke(hu, 255, 255);
  noFill();
  for (int y = 0; y < rows - 1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols - 1; x++) {
      vertex(x * res, y * res, grid[x][y]);
      vertex(x * res, (y + 1) * res, grid[x][y + 1]);
    }
    endShape();
  }  

  flying += 0.1;

  hu += 0.1;
  if (hu > 255) {
    hu = 0;
  }
}
