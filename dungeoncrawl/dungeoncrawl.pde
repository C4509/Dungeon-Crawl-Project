//Cierra Cheung
//October 27, 2021
//mode framework
int mode;
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;
//colour variables
color aqua = #0FF5E3;
color orange = #F59D0F;
color purple = #C797D8;
color lavender = #E7C1F5;
color red = #FF0000;
color b = #6ABAF5;
color or = #F79807;
color skyblue = #57E2F0;
color blue = #98D3F0;
color pink = #FFC0CB;
color mgreen = #B2F5B6;
color green = #11D81D;
color bl = #02aafc;
//map and map colors
PImage map;
color north, south, east, west;
//font
PFont fire;
//mouse
boolean clicked = false;
boolean mouseReleased;
boolean pressed, hadPressed;
//arraylists
ArrayList<GameObject> myObjects;
ArrayList<Button> B;
AnimatedGIF FallingStar;
ArrayList <Darkness>dark;
Hero myHero;
//key
boolean upkey, downkey, rightkey, leftkey, spacekey, akey;
void setup(){
  size(800,800);

 background(255);
 //load gif
  FallingStar = new AnimatedGIF(35,"frame_","_delay-0.03s.gif");
  //load arraylists
    myObjects = new ArrayList<GameObject>();
  B = new ArrayList<Button>();
  dark = new ArrayList<Darkness>(1000);
map = loadImage("map3.png");
  myHero = new Hero();
  myObjects.add(myHero);
 myObjects.add(new Archer(3,1));
  myObjects.add(new Enemy());
  myObjects.add(new Follower(2,1));
  myObjects.add(new Lurker(1, 3));
  //load font
  fire = createFont("BreatheFireIi-2z9W.ttf", 80);
//load darkness cells
 int x = 0;
  int y = 0;
  int size = 5;
  while (x<width && y < height) {
    dark.add(new Darkness(x, y, size));
     x = x + size;
    if (x >= width) {
      x=0;
      y = y + size;
    }
  }
//loading enemies
//int xc = 0;
//int yc = 0;
//while ( y < map.height){
//    x++;
//color roomColor=map.get(xc, yc);
//if  (roomColor == pink){
//  myObjects.add(new Archer(x,y));
//  println("A");
  
//}
//if  (roomColor == mgreen){
//  myObjects.add(new Lurker(xc,yc));
  
//}
//if(roomColor == blue){
//  myObjects.add(new Follower(xc,yc));
//}
//if(roomColor == orange){
//  myObjects.add(new Enemy());
//}

//  if (x == map.width){
//    x = 0;
//    y ++;
   
//  }
    
//  }

}

void draw(){
  //control if mouse is clicked
  if (mousePressed) hadPressed = true;
  if (hadPressed && !mousePressed) {
     mouseReleased = true;
     hadPressed = false;
  }
  //initialize gif
  
  FallingStar.show();
//initialize button class
  int i = 0;
  while (i <   B.size()) {
    Button b =   B.get(i);
    b.act();   
    b.show();
    i++;
  }

    //mode framework
  if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==pause) {
    pause();
  } else if (mode==gameover) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
  
}
