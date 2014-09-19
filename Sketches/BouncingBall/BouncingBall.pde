// declare -> initialize -> call functionality


// declare instance
Ball myBall;
Ball myBall2;
Ball myBall3;

void setup() {
  size(600, 600);
  smooth();

  // initialize
  myBall = new Ball(200, 200);
  myBall2 = new Ball(100, 400);
  myBall3 = new Ball(400, 200);
}

void draw() {
  
  // No fourth argument means 100% opacity
  fill(0,0,255);
  rect(0,0,100,200);
  
  // 255 means 100 % opacity
  fill(255,0,0,255);
  rect(0,0,200,40);
  
  // 75 % opacity
  fill(255,0,0,191);
  rect(0,50,200,40);
  
  // 55 % opacity
  fill(255,0,0,127);
  rect(0,100,200,40);
  
  // 25 % opacity
  fill(255,0,0,63);
  rect(0,150,200,40);
  
  
  //objectThree pale red
  fill(127,0,0);
  noStroke();
  ellipse(60,20,16,16);

  // call functionality
  myBall.run();
  myBall2.run();
  myBall3.run();
}

