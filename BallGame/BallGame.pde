final float[] RES = {150, 450, 750};
ArrayList<Pos> c;
Player p;

void setup() {
  size(600, 600);

  c = new ArrayList<Pos>();
  c.add(new Pos(RES[0]));
  c.add(new Pos(RES[1]));
  c.add(new Pos(RES[2]));

  p = new Player();
}

void draw() {
  background(0);

  for (Pos p : c) {
    p.show();
    println(p.pos.x + " " + p.pos.y);
  }

  p.show();
  println("\n" + p.pos.x + " " + p.pos.y);
  
  noLoop();
}
