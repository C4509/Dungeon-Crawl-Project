class Drop extends GameObject{
  //instance variables
  int type;
  Weapon w;
  color f;
  //constructor(s)
  Drop(float x, float y, int rx, int ry, color c){
    hp = 1;
    location = new PVector(x, y);
    velocity = new PVector(0,0);
    size = 20;
    roomx= rx;
    roomy = ry;
    f = c;
  }
  
  
  //behaviour functions
  void show(){
    stroke(lavender);
    strokeWeight(2);
    fill(f);
    circle(location.x, location.y, size);
    
    
  }
  
  
  
  
  
  
}
