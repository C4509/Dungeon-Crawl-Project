 class GameObject {
  //instance variables
    int roomx, roomy;
  PVector location;
  PVector velocity;
  int hp;
  int size;
  int speed;
  int xp;
  
  //constructor
  GameObject() {
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
  }
  //behaviour functions
  void show() {
  }
  //check if object is in room
  boolean inroom(GameObject b){
    if (roomx == b.roomx && roomy == b.roomy){
     return true;
   } else {
    return false;
    }
  }
  //check for collisions
  boolean Collide(GameObject b){
     
    float d = dist(b.location.x, b.location.y, location.x, location.y);
    if(inroom(b) && d < size/2 + b.size/2){
      return true;
    } else {return false;
    }

      
  }
  
      void explode(int n){
      int i = 0;
      while(i<n){
        myObjects.add(new Particle(location.x, location.y, roomx, roomy));
        i++;
      }
      
      
    }
  
  
  void act() {
    location.add(velocity);
    
    
  }
  
}
