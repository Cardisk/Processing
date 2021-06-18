//Variabili per disegnare le linee
int res = 5;
int rows, cols;
float grid[][];

//Variabili per gestire il rumore di perlin
float offZ = 0;
float inc = 0.01;

void setup() {
  fullScreen();
  //size(800, 500);
  
  rows = 1 + height / res;
  cols = 1 + width / res;
  grid = new float[cols][rows];
}

void draw() {
  //Pulisco ogni frame lo schermo
  background(255, 100, 75);
  
  //Assegno i valori del rumore alla griglia ogni frame
  float offY = 0;
  for(int i = 0; i < cols; i++) {
    float offX = 0;
    for(int j = 0; j < rows; j++) {
      grid[i][j] = map(noise(offX, offY, offZ), 0, 1, -1, 1);
      offX += inc;
    }
    offY += inc;
  }
  offZ += 0.01;
  
  //Codice per disegnare i vertici dei rettangoli che formano la griglia
  /*for(int i = 0; i < cols; i++) {
    for(int j = 0; j < rows; j++) {
      stroke(grid[i][j] * 255);
      strokeWeight(res * 0.4);
      point(i * res, j * res);  
    }
  }*/
  
  //Codice per disegnare le linee ogni 4 punti disposti a forma di quadrato (le linee uniscono i punti medi)
  for(int i = 0; i < cols - 1; i++) {
    for(int j = 0; j < rows - 1; j++) {
       //Creo le coordinate di partenza in base agli indici dei due cicli
       float x = i * res;
       float y = j * res;
       
       //Creo i vettori che contengono le coordinate dei punti medi
       PVector a = new PVector(x + res / 2, y);
       PVector b = new PVector(x + res, y + res / 2);
       PVector c = new PVector(x + res / 2, y + res);
       PVector d = new PVector(x, y + res / 2);
       
       //Chiamata alla funzione di conversione
       int state = toBaseTen(ceil(grid[i][j]), ceil(grid[i + 1][j]), ceil(grid[i + 1][j + 1]), ceil(grid[i][j + 1]));
       
       //Switch per disegnare il caso in cui si trovano i 4 punti
       stroke(0);
       strokeWeight(2);
       switch(state) {
         case 1:
           line(c, d);
           break;
         case 2:
           line(b, c);
           break;
         case 3:
           line(b, d);
           break;
         case 4:
           line(a, b);
           break;
         case 5:
           line(a, d);
           line(b, c);
           break;  
         case 6:
           line(a, c);
           break;
         case 7:
           line(a, d);
           break;
         case 8:
           line(a, d);
           break;
         case 9:
           line(a, c);
           break;
         case 10:
           line(a, b);
           line(c, d);
           break;
         case 11:
           line(a, b);
           break;
         case 12:
           line(b, d);
           break;
         case 13:
           line(b, c);
           break;
         case 14:
           line(c, d);
           break;
       }
    }
  }
}

//Override della funzione line per disegnare linee senza passare i quattro punti ma semplici vettori
void line(PVector v1, PVector v2) {
  line(v1.x, v1.y, v2.x, v2.y);
}

//Codice per convertire in base dieci la configurazione dei 4 punti
int toBaseTen(int a, int b, int c, int d) {
  return a * 8 + b * 4 + c * 2 + d * 1;
}
