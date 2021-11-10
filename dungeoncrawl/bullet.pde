 class Bullet extends GameObject{
  //instance variables
  int timer;  
  int fi;
    //constructor
  Bullet(PVector vel, color f, int s){
    timer=300;
    hp = 1;
    location = new PVector(myHero.location.x, myHero.location.y);
    velocity = vel;
    fi = f;
    size = s;
  }
    
  //behaviour functions
  void show(){
    if (mode == game){
    stroke(255);
    fill(fi);
    ellipse(location.x, location.y,size,size);
    }
  }
  void act(){
    //control
if (mode == game)    {
super.act();
timer--;
    if(timer ==0){
      hp = 0;}
      
       //wall collision
    if (location.x>width-120) {
      hp = 0;
    }
    if (location.x<120) {
      hp = 0;
    }
    if (location.y>height-120) {
    hp = 0;
    }
    if (location.y<120) {
     hp = 0;
    }
    } 
  }
}
