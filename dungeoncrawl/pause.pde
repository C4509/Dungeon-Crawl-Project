void pause() {
  background(aqua);
  textSize(60);
  textMode(NORMAL);
  strokeWeight(3);

 textSize(60);
Damage.show();
Damage.act();
HP.show();
HP.act();
Speed.show();
Speed.act();
textSize(60);
back.act();
back.show();
Weapons.act();
Weapons.show();
    fill(lavender);
  text("You have:"+ myHero.xp+" xp", 230, 170);
  text("HP:"+ myHero.hp, 230, 320);
  text("Speed:"+ myHero.speed, 230, 470);
  text("Damage:"+ myHero.damage, 230, 620);
  //initialize button class
  //int i = 0;
  //while (i <   B.size()) {
  //  Button b =   B.get(i);
  //  b.act();   
  //  b.show();
  //  i++;
  //}

}



void pauseClicks() {
   if (Weapons.c){mode = SELECT;}
   
    if(Damage.clicked==true && myHero.xp >=5 && mode == pause){
      myHero.damage = myHero.damage + 1;
       myHero.xp = myHero.xp - 5;
    }
    if(Speed.clicked==true && myHero.xp>=5 && mode == pause){
      myHero.speed = myHero.speed + 1;
      myHero.xp = myHero.xp - 5;
    }
    if(HP.clicked==true &&  myHero.xp >= 5 && mode == pause){
       myHero.hp =  myHero.hp + 100;
       myHero.xp =  myHero.xp - 5;
    }
    if(back.clicked){mode = game;}
}
