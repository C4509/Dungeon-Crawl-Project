class Follower extends Enemy {

  //constructor
  Follower(int x, int y) {
    super(100, 50, x, y);
  }
  //behaviour functions
  void show() {
    if (roomx == myHero.roomx && roomy == myHero.roomy) {
      circle(location.x, location.y, size);
      fill(255);
      textSize(20);
      text(hp, location.x-10, location.y+5);
    }
  }

  void act() {
    super.act();
    velocity = new PVector(myHero.location.x - location.x, myHero.location.y - location.y);
    velocity.setMag(3);
    if (hp <= 0){
    myObjects.add(new Drop(location.x, location.y, roomx, roomy, blue));
    
      
    }
    }
  }
