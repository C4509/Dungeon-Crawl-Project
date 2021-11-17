void game() {
  background(orange);


  //dark.add(new Darkness(0,0,size));
  //walls
  fill(lavender);
  strokeWeight(3);
  stroke(blue);
  rect(2, 2, width-5, 100);
  rect(2, height-102, width-5, 100);
  rect(2, 2, 100, height-5);
  rect(width - 102, 2, 100, height-5);
  //map location
  image(map, 100, 100);
  north = map.get(myHero.roomx, myHero.roomy-1);
  south = map.get(myHero.roomx, myHero.roomy+1);
  east = map.get(myHero.roomx + 1, myHero.roomy);
  west = map.get(myHero.roomx-1, myHero.roomy);
  //draw exits
  noStroke();
  fill(#16B9F7);
  if (north != #FFFFFF) {
    ellipse(width/2, height - 702, 100, 100);
  }
  if (south != #FFFFFF) {
    ellipse(width/2, height - 102, 100, 100);
  }
  if (east != #FFFFFF) {
    ellipse(width-102, height/2, 100, 100);
  }
  if (west != #FFFFFF) {
    ellipse(width-702, height/2, 100, 100);
  }
  //cover ellipses
  fill(orange);
  rect(width-697, 350, 100, 200);
  rect(width-205, 350, 100, 200);
  rect(350, height-697, 100, 200);
  rect(350, height-305, 100, 200);
  //initialize GameObjects
  int i2 = 0;
  //initialize gameobjects
  while (i2 <   myObjects.size()) {
    GameObject b =   myObjects.get(i2);
    if (b.hp<=0) {
      println("hi");
      myObjects.remove(i2);
    } else
      b.act();   
    b.show();
    i2++;
  }
  //initialize darkness cell arraylist 
  int i = 0;
  while (i <   dark.size()) {
    Darkness d =   dark.get(i);   
    d.show();
    i++;
  }
  //drawing mini map
  int x = 0;
  int y = 0;
  float size = 5;
  while (y < map.height) {
    color c = map.get(x, y);
    fill(c);
    square(x*5+70, y*5+70, size);
    fill(orange);
    square(myHero.roomx*5+70, myHero.roomy*5+70, size);
    x=x+1;
    if ( x >+map.width) {
      x=0;
      y=y+1;
    }
  }
}

void gameClicks() {
  //if (myHero.hp ==0){
  //  mode = gameover;

  //}
}
