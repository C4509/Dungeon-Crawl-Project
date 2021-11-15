class Hero extends GameObject {
  //instance variables
  float speed;
  int t; 
  int f; 

  Weapon myWeapon;

  //constructor

  Hero() {
    super();
    size = 30;
    hp=500;
    roomx=1;
    roomy=1;
    speed = 5;
    myWeapon = new Weapon(); 
    ArrayList <Weapon> weapons;
    t = 100;
    f = 100;
  }
  //behaviour functions
  void show() {
    if( f >= t){
    fill(0);
    } else if ( f < t ){
      fill(lavender);
    }
    strokeWeight(2);
    stroke(b);
    circle(location.x, location.y, size);
  }
  void act() {
    super.act();
    //move
    if (upkey) {
      velocity.y = -speed;
    }
    if (downkey) { 
      velocity.y = speed;
    }
    if (leftkey) {
      velocity.x = -speed;
    }
    if (rightkey) {
      velocity.x = speed;
      ;
    }
    if (velocity.mag()>speed) {
      velocity.setMag(speed);
    }
    //wall collision
    if (location.x>width-120) {
      location.x = width-120;
    }
    if (location.x<120) {
      location.x = 120;
    }
    if (location.y>height-120) {
      location.y = height-120;
    }
    if (location.y<120) {
      location.y = 120;
    }
    //movement
    if (!downkey & ! upkey) {
      velocity.y = velocity.y *0.6;
    }
    if (!rightkey & ! leftkey) {
      velocity.x = velocity.x *0.6;
    }
    //teleport through exits
    if (north != #FFFFFF && location.y == 120 && location.x<= width/2 + 50 && location.x >= width/2 -50) {
      roomy--;
      location = new PVector(400, height-120);
    } else if (south != #FFFFFF && location.y == height-120 && location.x<= width/2 + 50 && location.x >= width/2 -50) {
      roomy++;
      location = new PVector(400, 120);
    } else  if (east != #FFFFFF && location.x == width-120 && location.y<= width/2 + 50 && location.y >= width/2 -50) {
      roomx++;
      location = new PVector(120, 400);
    } else
      if (west != #FFFFFF && location.x == 120 && location.y<= width/2 + 50 && location.y >= width/2 -50) {
        roomx--;
        location = new PVector(width-120, 400);
      }
      //control weapon
      myWeapon.update();
      if(spacekey){myWeapon.shoot();}
      
       //taking damage
       f ++;
    int i = 0;
    while (i <   myObjects.size()) {
    GameObject b =   myObjects.get(i);
    if(b instanceof Enemy && b.roomx == roomx && b.roomy == roomy){
      float d = dist(b.location.x, b.location.y, location.x, location.y);
      if (d <= size/2 + b.size/2 && f >= t){
        hp = hp-1;
        println(hp);
        f = 0;
    }
    }
    i++;
  }
  
  }
  }
