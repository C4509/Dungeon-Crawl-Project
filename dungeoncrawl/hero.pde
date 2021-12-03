class Hero extends GameObject {
  //instance variables
  float speed;
  int t; 
  int f; 
  final int maxhp;
  int damage;
  float trans;
  AnimatedGIF currentact;

  Weapon myWeapon;

  //constructor

  Hero() {
    super();
    size = 30;
    hp=1000;
    maxhp = hp;
    roomx=1;
    roomy=1;
    speed = 5;
    myWeapon = new Weapon(); 
    ArrayList <Weapon> weapons;
    currentact = mandown;
    t = 100;
    f = 100;
    trans = 255;
    damage = 0;
  }
  //behaviour functions
  void show() {
    currentact.show(location.x, location.y, size/1.5, size);
     fill(0, trans);
     rect(location.x-15, location.y-(size/2+12), 30, 6);
     fill(red, 0);
     rect(location.x-13, location.y-(size/2+11), 28, 4);
     fill(green, trans);
     float lifemeter = map(hp, 0, 100, 0, 28);
     rect(location.x-13, location.y-(size/2+11), lifemeter, 4);
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
      velocity.y = velocity.y *0.9;
    }
    if (!rightkey & ! leftkey) {
      velocity.x = velocity.x *0.9;
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
    if (spacekey) {
      myWeapon.shoot();
    }
    
    //movement animation
    if (abs(velocity.y)>abs(velocity.x)){
      if(velocity.y > 0){
        currentact = mandown;
      } else { currentact = manup;
      } 
    }else { if(velocity.x > 0){
        currentact = manright;
      } else currentact = manleft;
      }
      
    
    //taking damage
    f ++;
    int i = 0;
    while (i <   myObjects.size()) {
      GameObject b =   myObjects.get(i);
      if (b instanceof Enemy && (Collide(b)) && f >+t){
        hp = hp-1;
        println(hp);
        f = 0;
      }
      if(b instanceof EBullet && (Collide(b))&&f>=t){
        hp = hp-1;
        println(hp);
        b.hp=0;
        f = 0;
      }
      //picking up items
      if(b instanceof Drop&&(Collide(b))){
        Drop item = (Drop) b;
        if(item.type == 0){
          myWeapon = item.w;
        }
     else if(item.type == AMMO){
            myWeapon.bulletSpeed = myWeapon.bulletSpeed+5;
          }
       else if(item.type == HEALTH){
            hp = hp + 100;
            println("ow");
           if (hp > maxhp){
             hp = maxhp; 
           }
          }
          item.hp=0;
        
      }
      i++;
    }         

      if (hp <=0){
    mode = gameover;

  }
  }
  void mouseReleased(){

 }
  }
