class Lurker extends Enemy{
 //constructor
  Lurker(int x, int y, float xc, float yc) {
    super(100, 50, x, y);
    location = new PVector(xc, yc);
    xp = 5;
     s = 1;
  }
  //behaviour functions
  void show() {
    if (roomx == myHero.roomx && roomy == myHero.roomy) {
      fill(mgreen);
      circle(location.x, location.y, size);
      fill(255);
      textSize(20);
      text(hp, location.x-10, location.y+5);
    }
  }

  void act() {
    super.act();
    //attacking hero
     int i = 0;
    while (i <   myObjects.size()) {
    GameObject b =   myObjects.get(i);
    if(b instanceof Hero){
      float d = dist(b.location.x, b.location.y, location.x, location.y);
     if (d <= size/2+ 100 + b.size/2 + 100  && roomx == myHero.roomx && roomy == myHero.roomy){
    velocity = new PVector(myHero.location.x - location.x, myHero.location.y - location.y);
    velocity.setMag(3);
    }
    else{ velocity = new PVector(0,0);
    }
    }
    i++;
  }
  //dropping item
       if (hp <= 0&& r<= 80){
    myObjects.add(new Drop(location.x, location.y, roomx, roomy, mgreen));
    
      
    }
     if (mode == gameover){hp = 100;}
  }
}
