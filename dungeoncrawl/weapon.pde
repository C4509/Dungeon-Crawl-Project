class Weapon {
  //instance variables
  int shotTimer;
  int bulletSpeed;
  int threshold;
  
  //constructors
  Weapon(){
    shotTimer = 0;
    bulletSpeed = 5;
    threshold = 10;
  }
  Weapon(int thr, int bs){
    shotTimer = 0;
    threshold = thr;
    bulletSpeed = bs;
    
  }
  //behaviour functions
  void update(){
    shotTimer++;
    
    
  }
  
  void shoot(){
    if ( shotTimer >= threshold){
      PVector aimvector= new PVector(mouseX-myHero.location.y,mouseY-myHero.location.y);
      aimvector.setMag(bulletSpeed);
        myObjects.add(new Bullet(aimvector, aqua, 10));
      shotTimer=0;
    }
    }
    
    
  }
  

  