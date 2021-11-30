class Enemy extends GameObject {
  //instance variables
  int r;
  int xp;
  //contructors
  Enemy() {

    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    hp = 100;
    roomx = 1;
    roomy = 1;
    size = 50;
  }

  Enemy(int _hp, int s, int x, int y) {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    hp = _hp;
    size = s;
    roomx = x;
    roomy = y;
    r = int(random(0, 99));
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
    //taking damage
    int i = 0;
    while (i <   myObjects.size()) {
      GameObject b =   myObjects.get(i);
      if (b instanceof Bullet && b.roomx == roomx && b.roomy == roomy) {
        float d = dist(b.location.x, b.location.y, location.x, location.y);
        if (d <= size/2 + b.size/2) {
          hp = hp-int(b.velocity.mag());
          b.hp = 0;
          if (hp<=0) {
            explode(size);
            myHero.xp += xp;
            myObjects.add(new Message(location, "+" + xp));
          }
        }
      }
      i++;
    }
  }
}
