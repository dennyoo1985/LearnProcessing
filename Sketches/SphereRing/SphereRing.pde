// declare
SphereTab st1, st2;


void setup() {
  size(640, 360);
  st1 = new SphereTab(width*0.45, height*0.5, 0.1, 120);
  st2 = new SphereTab(width*0.65, height*0.8, 0.05, 180);
}

void draw() {
  background(0);
  st1.transmit();
  st2.transmit();
}
