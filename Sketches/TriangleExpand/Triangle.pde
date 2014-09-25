class Triangle {
  float x1, y1, x2, y2, x3, y3;
  float x1r, y1r, x2r, y2r, x3r, y3r;
  float g;
  
  
  // Constructor
  Triangle(float xpos1, float ypos1, float xpos2, float ypos2, float xpos3, float ypos3, float grow) {
    
    x1r = xpos1;
    y1r = ypos1;
    x2r = xpos2;
    y2r = ypos2;
    x3r = xpos3;
    y3r = ypos3; 
    
    x1 = xpos1;
    y1 = ypos1;
    x2 = xpos2;
    y2 = ypos2;
    x3 = xpos3;
    y3 = ypos3;
    g = grow;
  }
  
  void expand() {
    x1 += -g;
    y1 += -g;
    x2 += g;
    y2 += -g;
    y3 += g;
  }
  
  void display() {
    strokeWeight(1);
    //fill(0);
    triangle(x1, y1, x2, y2, x3, y3);
  }
  
  void reset() {
    x1 = x1r;
    y1 = y1r;
    x2 = x2r;
    y2 = y2r;
    x3 = x3r;
    y3 = y3r;
  }
  
  void translate() {
    x1 -= g;
    x2 -= g;
    x3 -= g;
  }
}
