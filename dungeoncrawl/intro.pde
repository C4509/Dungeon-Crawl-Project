void intro(){
  textSize(80);
 textFont(fire);
  fill(orange);
  textMode(CENTER);
  text("RPG", 350,300);
 B.add(new Button("Start",300,500,200,100,lavender,aqua,orange));

  
  
}

void introClicks(){
  if(clicked == true){
    mode = game;
  }
  
  
  
  
}
