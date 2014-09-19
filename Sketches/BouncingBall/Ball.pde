class Ball {
  // global variable
  float x = 0;
  float y = 0;
  float speedX = 10;
  float speedY = 4;

  // constructor
  Ball(float _x, float _y) {
    x = _x;
    y = _y;
  }

  // method

  void run() {
    display();
    move();
    bounce();
    gravity();
  }

  void move() {
    x += speedX;
    y += speedY;
  }

  void bounce() {
    if (x > width) {
      speedX = speedX * -1;
    }
    if (x < 0) {
      speedX = speedX * -1;
    }
    if (y > height) {
      speedY = speedY * -1;
    }
    if (y < 0) {
      speedY = speedY * -1;
    }
  }
  
  void gravity(){
    speedY += 0.1; 
  }

  void display() {
    ellipse(x, y, 20, 20);
  }
}

