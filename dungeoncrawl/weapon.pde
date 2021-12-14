class Weapon {
  //instance variables
  int shotTimer;
  int bulletSpeed;
  int threshold;
  int maxspe;
  boolean e;
  boolean s;
  boolean g;
  boolean r;
  
  //constructors
  Weapon(){
    shotTimer = 0;
    bulletSpeed = 5;
    threshold = 20;
    maxspe = 50;
  }
  Weapon(int thr, int bs){
    shotTimer = 0;
    threshold = thr;
    bulletSpeed = bs;
    maxspe = 70;
  }
  //behaviour functions
  void update(){
    shotTimer++;
    
    
  }
  
  void shoot(){
    if ( shotTimer >= threshold){
      PVector aimvector= new PVector(mouseX-myHero.location.x,mouseY-myHero.location.y);
      if (bulletSpeed >= maxspe){bulletSpeed = maxspe;}
      aimvector.setMag(bulletSpeed);
        myObjects.add(new Bullet(aimvector, aqua, 10));
      shotTimer=0;
    }
    }
    
    
  }
  
