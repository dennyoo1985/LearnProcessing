class Sphere {
  float x, y; // x,y coordinate
  float tilt; // offset
  float angle; // define tilt
  float scalar; // height
  
  // Constructor
  Sphere(float xpos, float ypos, float t, float s) {
    x = xpos;
    y = ypos;
    tilt = t;  
  }
  
  // offset the sphere
  void shake() {
    tilt = sin(angle) / 8;
    angle += 0.1;
  }
  
  void display() {
    noStroke(); // no outline
    fill(255); // fill color
    pushMatrix();
    translate(x, y);
    rotate(tilt);
    scale(scalar);
    beginShape();
    ellipse(50, 50, 25, 25);
    endShape();
    popMatrix();
  }
}
    
    
