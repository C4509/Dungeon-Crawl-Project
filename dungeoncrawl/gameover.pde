void gameover(){

  if (myHero.hp == 0){
    textSize(50);
    fill(red);
    text("You Lose...", 300, 300);
    Back1.show();
    Back1.act();
  } else {
    fill(green);
    text("You Win!",300,300);
    Back2.show();
    Back2.act();
    ADVANCE.show();
    ADVANCE.act();
  }
  
}

void gameoverClicks(){
  if (Back1.c || Back2.c){
    l = false;
    mode = intro;
    setup();
    myHero.score = 0;
  }
  if (ADVANCE.c){
    l = true;
    setup();
    mode = intro;
    myHero.score = 0;
  }
  if(ADVANCE.c && l){
    l = false;
    a = true;
    setup();
    myHero.score = 0;
    
  }
  
  
  
}
