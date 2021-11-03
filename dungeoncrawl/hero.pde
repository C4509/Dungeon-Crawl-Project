class Hero extends GameObject {
  //instance variables
  float speed;
  int roomx, roomy;
  Weapon myWeapon;

  //constructor

  Hero() {
    super();
    size = 30;
    hp=1;
    roomx=1;
    roomy=1;
    speed = 5;
    myWeapon = new Weapon();
    ArrayList <Weapon> weapons;
  }
  //behaviour functions
  void show() {
    fill(0);
    strokeWeight(2);
    stroke(b);
    circle(location.x, location.y, size);
  }
  void act() {
    super.act();
    //move
    location.add(velocity);
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
      velocity.y = velocity.y *0.75;
    }
    if (!rightkey & ! leftkey) {
      velocity.x = velocity.x *0.75;
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
      myWeapon.update();
      if(spacekey){myWeapon.shoot();}
  }
}
