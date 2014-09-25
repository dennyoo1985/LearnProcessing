void setup() {
  size(500,500);
  frameRate(1000);
  smooth();
}

void draw() {
  float d = random(10,20);
  fill(random(255), random(255), random(255));
  ellipse(random(width),random(height), d, d);
}
