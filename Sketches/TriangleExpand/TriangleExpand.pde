Triangle t1, t2;

void setup() {
  size(640, 500);
  t1 = new Triangle(200, 200, 300, 200, 250, 300, 5);  
  t2 = new Triangle(200, 200, 300, 200, 250, 300, -5);
  background(255);
}

void draw() {
    
  t1.display();
  t1.expand();
  t1.translate();
  if(t1.x1 < 0) {
    t1.reset();
  }
  
  t2.display();
  t2.expand();
  t2.translate();
  if(t2.x1 > width) {
    t2.reset();
  }
  
}
