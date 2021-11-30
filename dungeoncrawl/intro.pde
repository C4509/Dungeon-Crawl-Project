void intro(){
r = true;
  textSize(80);
 textFont(fire);
  fill(orange);
  textMode(CENTER);
  text("RPG", 350,300);
if (r){ B.add(new Button("Start",300,500,200,100,mgreen,orange,blue, 0));}

  
  
}

void introClicks(){
  if(clicked == true){
    mode = game;
  }
  
  
  
  
}
