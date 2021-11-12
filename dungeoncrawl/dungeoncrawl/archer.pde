class Archer extends Enemy {
    int shotTimer;
  int bulletSpeed;
  int threshold;
    //constructor
  Archer(int x, int y) {
    super(100, 50, x, y);
        shotTimer = 0;
    bulletSpeed = 10;
    threshold = 50;
    hp = 50;
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
    shotTimer ++;
     if ( shotTimer >= threshold){
      PVector aimvector= new PVector(myHero.location.x- location.x,myHero.location.y - location.y);
      aimvector.setMag(bulletSpeed);
        myObjects.add(new EBullet(aimvector, new PVector(location.x, location.y), roomx, roomy));
      shotTimer=0;
    }
    }
    
  }

  
  
  
  
  
  
  
  
