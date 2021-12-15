class BAG {
  //instance variables
  Weapon e;
  boolean s = false;
  boolean r = false;
  boolean g = false;

  BAG() {
  }

  void act() {
    if (e.s) {
      s = true;
    } else {
      s = false;
    }
    if (e.r) {
      r = true;
    } else {
      r = false;
    }
    if (e.g) {
      g = true;
    } else {
      g = false;
    }
    if (mode == SELECT) {
      if (onekey) {
        e = new Weapon();
        
      }
      if (twokey && e.s == true) {
        e = new Shooter();
      }
      if (threekey && e.r) {
        e = new Rifle();
      }
      if (fourkey && e.g) {
        e = new Gun();
      }
    }
  }
}
