void intro(){
r = true;
  textSize(80);
 textFont(fire);
  fill(orange);
  textMode(CENTER);
  text("RPG", 350,300);
  textSize(60);
  Start.show();
  Start.act();
  

  
  
}

void introClicks(){
  if(Start.clicked == true){
    mode = game;
  }
  
  
  
  
}
