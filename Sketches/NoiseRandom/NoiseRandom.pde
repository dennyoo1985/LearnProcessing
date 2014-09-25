void setup() {
size(600, 170);
noStroke();
fill(0);
}

void draw() {
background(255);
float v = 0;


for (int i=0; i < width; i += 3) {
  float n = 90 + noise(v) * 40;
  rect(i, n, 2, 20);
  v = v + 0.15;
}


for (int i=0; i < width; i += 3) {
  float r = random(10, 30);
  rect(i, r, 2, 20);
}

}
