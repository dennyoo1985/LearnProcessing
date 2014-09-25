void setup() {
  size(500, 500);
  background(255);
  smooth();
  stroke(0);
}

void draw() {
  
  fill(random(255), random(255), random(255));
  float x1 = random(width);
  float y1 = random(width);
  float x2 = random(width);
  float y2 = random(width);
  
  
  curve(100, 100, x1, y1, x2, y2, 100, 100);

}
  

