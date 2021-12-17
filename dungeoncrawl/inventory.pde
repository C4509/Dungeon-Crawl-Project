class BAG {
  //instance variables
  Weapon e;
  Weapon e1;
  Weapon e2;
  Weapon e3;
  //boolean s = false;
  //boolean r = false;
  //boolean g = false;

  BAG() {
    e = new Weapon();
    e1 = new Shooter();
    e2 = new Rifle();
    e3 = new Gun();
  }

  void act() {
   
        //if (s == true) {
        //  e1.s = true;
        //  s = true;
        //} else {
        //  s = false;
        //}
        //if (ri) {
        //  e2.r = true;
        //  r = true;
        //} else {
        //  r = false;
        //}
        //if (g) {
        //  e3.g = true;
        //  g = true;
        //} else {
        //  g = false;
        //}
   
    if (mode == SELECT) {
      if (onekey) {
        e = new Weapon();
      }
      if (twokey && s == true) {
        e1 = new Shooter();
      }
      if (threekey && ri == true) {
        e2 = new Rifle();
      }
      if (fourkey && g) {
        e3 = new Gun();
      }
    }
  }
}
