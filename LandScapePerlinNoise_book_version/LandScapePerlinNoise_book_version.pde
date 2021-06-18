/*
  Use the noise values as the elevations of a landscape. See the screenshot below as a reference. (Completato)
 */
float[][] grid;
int res = 10;
int cols, rows;

float increment = 0.1;

void setup() {
  size(600, 600, P3D);
  frameRate(30);

  rows = height / res;
  cols = width / res;
  grid = new float[cols][rows];

  float offY = 0;
  for (int i = 0; i < rows; i++) {
    float offX = 0;
    for (int j = 0; j < cols; j++) {
      grid[i][j] = map(noise(offX, offY), 0, 1, -100, 100);
      offX += increment;
    }
    offY += increment;
  }
}

void draw() {
  background(0);

  translate(0, height / 3);
  rotateX(PI / 3);

  stroke(255);
  noFill();
  for (int y = 0; y < rows - 1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols - 1; x++) {
      vertex(x * res, y * res, grid[x][y]);
      vertex(x * res, (y + 1) * res, grid[x][y + 1]);
    }
    endShape();
  }
}
