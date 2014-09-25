void setup() {
  size(500, 500);
  background(255);
  smooth();
  stroke(0);
  frameRate(400);
}

float xm = 250;
float ym = 250;


void draw() {
 
  if (xm < width && xm > 0) {
    xm = xm + random(-10,10);
  } else {
    xm = 250;
  }
    
  if (ym < height && ym > 0) {
    ym = ym + random(-10,10);
  } else {
    ym = 250;
  }
 
  fill(random(150,200), random(150,200), random(150,200));
  ellipse(xm, ym, 80, 80);
}
  
  
