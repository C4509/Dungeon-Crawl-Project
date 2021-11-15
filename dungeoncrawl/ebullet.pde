class EBullet extends GameObject{
     int timer;  
  int fi;
  EBullet(PVector velo, PVector loc, int x, int y){
  location = loc;
  velocity = velo;
  timer = 60;
  roomx = x;
  roomy = y;
  size = 10;
  hp = 1;
  }
  
    //behaviour functions
  void show(){
     if(roomx == myHero.roomx && roomy == myHero.roomy){
    if (mode == game){
    stroke(255);
    fill(fi);
    ellipse(location.x, location.y,size,size);
    }
     }
  }
  
  void act(){
    if(roomx == myHero.roomx && roomy == myHero.roomy){
    super.act();
      location.add(velocity);
      println("o");
    }
  }
  
  
}
