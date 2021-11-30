class Archer extends Enemy {
    int shotTimer;
  int bulletSpeed;
  int threshold;
    //constructor
  Archer(int x, int y, float xc, float yc) {
    super(100, 50, x, y);
    location = new PVector(xc, yc);
        shotTimer = 0;
    bulletSpeed = 5;
    threshold = 100;
    hp = 50;
    xp = 3;
  }
  //behaviour functions
  void show() {
    if (roomx == myHero.roomx && roomy == myHero.roomy) {
      fill(pink);
      circle(location.x, location.y, size);
      textSize(20);
      fill(255);
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
        if (hp <= 0 && r <=80){
    myObjects.add(new Drop(location.x, location.y, roomx, roomy, pink));
    }
    //   int i = 0;
    //while (i <   myObjects.size()) {
    //GameObject b =   myObjects.get(i);
    //if(b instanceof Enemy && Collide(b)){
    //    location = new PVector(random(120,width-120),random(120,height-120));
    //}
    //    i++;
    //}

    }
    
  }

  
  
  
  
  
  
  
  
