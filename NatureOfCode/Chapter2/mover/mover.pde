// dennyoo1985 added my own changes

class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;

  // constructor
  Mover(float m, float x, float y) {
    mass = m; // mass is initially set to 1 for simplicity
    location = new PVector(x,y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
  }
  
  // apply forces such as wind or gravity
  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass); // receive a force and divide by mass
    acceleration.add(f); // add the result to acceleration
  }
  
  // force accumulation
  // acceleration = force
  void update() {
    velocity.add(acceleration); // velocity is increasing if acceleration is non-zero
    location.add(velocity); // if a object is moving (velocity != 0) the location changes
    acceleration.mult(0); // acceleration is set to zero after each loop
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x,location.y,mass * 16, mass * 16); // scaling the size according to mass
  }

  
  // object will bounce whe it hits the edges of the window
  void checkEdges() {

    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      velocity.x *= -1;
      location.x = 0;
    }

    // reverse the direction of the object when it reaches the edges
    if (location.y > height) {
      velocity.y *= -1;
      location.y = height;
    }

  }

}

// create 100 mover objects using an array
Mover[] movers = new Mover[1000];

// initialize Mover object with a loop
void setup() {
  size(600, 300);
  
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(0.1,5),0,0); // x, y, location, velocity
  }
}

void draw() {
  background(255, 204, 0);
  
  PVector wind = new PVector(0.4,0);
  PVector gravity = new PVector(0, 0.5);
  
  for (int i = 0; i < movers.length; i++) {
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);
    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }
}


