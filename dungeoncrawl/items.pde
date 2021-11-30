class Drop extends GameObject{
  //instance variables
  int type;
  int r;
  Weapon w;
  AnimatedGIF currentact;
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
    r = int(random(2));
    if (r == 0){
    w = new Rifle();
    } else if(r == 1){
      w = new Shooter();}
      else if (r == 2){
        w = new Gun();
      }
    currentact = health;
    println(r);
  }
  
  
  //behaviour functions
  void show(){
    stroke(lavender);
    strokeWeight(2);
    fill(f);

    if(f == pink){
      type = AMMO;
       circle(location.x, location.y, size);
    } 
    if(f == blue){
      type = GUN;
       circle(location.x, location.y, size);
    }
    
    if (f == mgreen){
      type = HEALTH;
      currentact.show(location.x, location.y, size, size);
    }
    
    
  }
  
  
  
  
  
  
}
