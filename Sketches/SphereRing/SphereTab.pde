class SphereTab {
  // declare voila that is-a Sphere
  Sphere voila;
  Tone circle = new Tone();

  // constructor
  SphereTab(float x, float y, float t, float sp) {
    voila = new Sphere(x, y, t, sp);
    circle.start(x, y - sp/2);
  }

  void transmit() {
    voila.shake();
    voila.display();
    circle.grow();
    circle.display();
    if (circle.on == false) {
      circle.on = true;
    }
  }
}

