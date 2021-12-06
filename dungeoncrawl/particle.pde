class Particle extends GameObject {
  //instance variables
  int t;

  //constructor
  Particle(float x, float y, int rx, int ry) { 
    hp = 1;
    roomx = rx;
    roomy = ry;
    
    location=new PVector(x, y);
    velocity = new PVector(0, 1);
    velocity.rotate(random(0, TWO_PI));
    velocity.setMag(10);
    t = 255;
    size = 5;
  }
  //behaviour functions 
  void show() {
    fill(255);
    noStroke();
    ellipse(location.x, location.y, size, size);
  }
  void act() {
    super.act();
    t = t - 5;
    if (t <= 0) {
      hp = 0;
    }
  }
}
