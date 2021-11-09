class GameObject {
  //instance variables
    int roomx, roomy;
  PVector location;
  PVector velocity;
  int hp;
  int size;
  //constructor
  GameObject() {
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
  }
  //behaviour functions
  void show() {
  }
  void act() {
    location.add(velocity);
    
    
  }
  
}
