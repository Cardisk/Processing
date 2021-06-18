int r = 100;
float angle = 0;
ArrayList<Punto> wave;

void setup() {
  size(600, 400);
  wave = new ArrayList<Punto>();
}

void draw() {
  background(0);
  wave.add(new Punto());
  
  //Modifico il punto 0, 0 dello schermo 
  translate(150, 200);
  
  //Disegno la circonferenza
  stroke(255, 0, 0);
  strokeWeight(2);
  noFill();
  ellipse(0, 0, r * 2, r * 2);
  
  //Determino le coordinate del punto per ogni frame
  int x = (int)(r * cos(angle));
  int y = (int)(r * sin(angle));
  wave.get(wave.size() - 1).setY(y);
  
  //Disegno il punto sulla circonferenza
  stroke(255, 0, 0);
  strokeWeight(1);
  fill(255, 0, 0);
  ellipse(x, y, 10, 10);
  
  //Disegno una linea che vada dal centro della ciconferenza al centro del punto
  line(0, 0, x, y);
  
  //Disegno la sinusoide
  stroke(0, 0, 255);
  noFill();
  beginShape();
  for(int i = 0; i < wave.size(); i++) {
    vertex(wave.get(i).getX(), wave.get(i).getY());
  }
  endShape();
  
  for(int i = 0; i < wave.size(); i++) {
    wave.get(i).updateX();
  }
  
  stroke(0, 255, 0);
  line(x, y, wave.get(wave.size() - 1).getX(), wave.get(wave.size() - 1).getY());
  
  //Aggiorno il valore dell'angolo
  angle -= 0.03;
  
  for(int i = 0; i < wave.size(); i++) {
    if(wave.get(i).getX() >= width) wave.remove(i);
  }
}
