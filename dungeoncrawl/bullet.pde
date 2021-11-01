class Bullet extends GameObject{
  //instance variables
  int timer;  
  int fi;
    //constructors
  Bullet(PVector vel, color f, int s){
    timer=300;
    lives = 1;
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
    location.add(velocity);
if (mode == game)    {
super.act();
timer--;
    if(timer ==0){
      lives = 0;}
    }
//    if( location.y = 120)
  }
}
