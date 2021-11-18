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
  //boolean inroom(GameObject myObjects){
  //  if (roomx == myObjects.roomx && roomy == myObjects.roomy){
    // return true;
  // } else {
    //return false;
    //}
    
  //boolean Collide(GameObject myObjects){
  //  float d = dist(myObjects.location.y, myObjects.location.y, location.x, location.y);
  //  if(inroom(myObjects) && d < size/2 + myObjects.size/2){
  //    return true;
  //  } else {return false;
  //  }
  //}
  
  void act() {
    location.add(velocity);
    
    
  }
  
}
