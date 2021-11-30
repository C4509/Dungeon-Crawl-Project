void gameover(){
  r = false;
  if (myHero.hp == 0){
    
    text("You Lose...", 300, 300);
  } else {
    text("You Win!",300,300);
  }
  textSize(30);
  B.add(new Button("Try Again", 200, 600, 200, 100, mgreen, orange, blue, 0));
  B.add(new Button("Options", 500, 600, 200, 100, mgreen, orange, blue, 0));
  
  
  
}

void gameoverClicks(){
  
  
  
  
  
}
