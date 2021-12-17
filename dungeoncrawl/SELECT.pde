void SELECT(){
  background(aqua);
  textSize(60);
  textMode(NORMAL);
  strokeWeight(3);

 textSize(60);
  text("Weapon Selection", 200, 100);
  Weapon curr;
  curr = myHero.myWeapon;
  if(curr == new Weapon()){
   text("Current Weapon: Normal", 50, 200);
  } else if (curr == new Shooter()){
      text("Current Weapon: Shooter", 50, 200);
  }else if (curr == new Rifle()){
      text("Current Weapon: Rifle", 50, 200);
  } else if (curr == new Gun()){
      text("Current Weapon: Shooter", 50, 200);
  }


  text("Press 1 to switch to normal weapon", 20, 300);
  if( s == true){
  text("Press 2 to switch weapon to Shooter", 20, 400);
  } else {  text("Weapon SHOOTER unobtained", 20, 400);
  }
    if( ri == true){
  text("Press 3 to switch weapon to Rifle", 20, 500);
  } else {  text("Weapon RIFLE unobtained", 20, 500);
  }
    if( g == true){
  text("Press 4 to switch weapon to Gun", 20, 600);
  } else {  text("Weapon GUN unobtained", 20, 600);
  }
back2.show();
back2.act();
  println(r);
  println(s);
  
      if (mode == SELECT) {
      myBAG.act();
      //BAG item = (BAG) b;
      if (onekey) {
        myHero.myWeapon = myBAG.e;
      }
      if (twokey && s == true) {
        myHero.myWeapon = myBAG.e1;
        println("y");
      }
      if (threekey && r == true) {
        myHero.myWeapon = myBAG.e2;
        println("y");
      } 
      if (fourkey && g == true) {
        myHero.myWeapon = myBAG.e3;
        println("y");
      }
    } 
}

void SELECTclicks(){
  if(back2.c){mode = pause;}
  
  
  
}
