//Cierra Cheung
//October 27, 2021
//mode framework
int mode;
boolean l = false;
boolean a = false;
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameover = 3;
final int SELECT = 4;
boolean ri;
boolean s;
boolean  g;
//item types
final int GUN = 0;
final int AMMO = 1;
final int HEALTH = 3;
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
//gif
AnimatedGIF FallingStar;
AnimatedGIF manup;
AnimatedGIF mandown;
AnimatedGIF manright;
AnimatedGIF manleft;
AnimatedGIF health;

boolean mouseReleased;
boolean pressed, hadPressed;
//load buttons
Button Start;
Button Damage;
Button Speed;
Button HP;
Button back;
Button back2;
Button Back1;
Button Back2;
Button Weapons;
Bullet bu;
Button ADVANCE;
BAG myBAG;

//arraylists
ArrayList<GameObject> myObjects;
ArrayList <Darkness>dark;
Hero myHero;
  boolean r;
//key
boolean upkey, downkey, rightkey, leftkey, spacekey, akey, pkey, onekey, twokey, threekey, fourkey, fivekey;
void setup() {
  size(800, 800);

  background(255);
  //load gif
  FallingStar = new AnimatedGIF(35, "frame_", "_delay-0.03s.gif");
  manup = new AnimatedGIF(4,10,"man/up/sprite_", ".png");
  mandown = new AnimatedGIF(4,10,"man/down/sprite_", ".png");
  manright = new AnimatedGIF(4,10,"man/right/sprite_", ".png");
  manleft = new AnimatedGIF(4,10,"man/left/sprite_", ".png");
  health = new AnimatedGIF(4,10,"_",".png");
  //load buttons
  Start = new Button("Start",300,500,200,100,mgreen,orange,blue, 0);
  HP = new Button("a", 150, 270, 75,75, 255,0,255,orange);
  Speed = new Button("a", 150, 420, 50, 70, 255,0,255,orange);
  Damage = new Button("a", 150, 570, 50, 70, 255,0,255,orange);
  back = new Button("BACK TO GAME", 50, 670, 375, 100, aqua, bl, pink, lavender);
  back2 = new Button("BACK TO PAUSE", 50, 670, 375, 100, aqua, bl, pink, lavender);
  Weapons = new Button("WEAPONS", 475, 670, 275, 100, aqua, bl, pink, lavender);
  Back1 = new Button("INTRO", 300, 570, 200, 100, mgreen,orange,blue, 0);
  Back2 = new Button("INTRO", 150, 670, 200, 100, mgreen,orange,blue, 0);
  ADVANCE = new Button("ADVANCE", 475, 670, 275, 100, mgreen,orange,blue, 0);
  myBAG = new BAG();

  //load arraylists
  myObjects = new ArrayList<GameObject>();
  dark = new ArrayList<Darkness>(1000);
  if (l == false){
  map = loadImage("map6.png");
    } else if (l == true){  map = loadImage("map7.png");}
  myHero = new Hero();
  myObjects.add(myHero);
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
  int xc = 0;
  int yc = 0;
  while ( yc < map.height) {
    xc++;
    color roomColor=map.get(xc, yc);
    if  (roomColor == pink) {
      myObjects.add(new Archer(xc, yc, random(120,width-120),random(120, height - 120)));
      myObjects.add(new Archer(xc, yc, random(120,width-120),random(120, height - 120)));
      myObjects.add(new Archer(xc, yc, random(120,width-120),random(120, height - 120)));
    }
    if  (roomColor == mgreen) {
      myObjects.add(new Lurker(xc, yc, random(120,width-120),random(120, height - 120)));
      myObjects.add(new Lurker(xc, yc, random(120,width-120),random(120, height - 120)));
      myObjects.add(new Lurker(xc, yc, random(120,width-120),random(120, height - 120)));
    }
    if (roomColor == blue) {
      myObjects.add(new Follower(xc, yc, random(120,width-120),random(120, height - 120)));
      myObjects.add(new Follower(xc, yc, random(120,width-120),random(120, height - 120)));
      myObjects.add(new Follower(xc, yc, random(120,width-120),random(120, height - 120)));
    }
    if (roomColor == lavender) {
      myObjects.add(new BOSS(xc, yc, random(120,width-120),random(120, height - 120)));
    }
    if (xc == map.width) {
      xc = 0;
      yc ++;
    }
  }
}

void draw() {
  //control if mouse is clicked
  if (mousePressed) hadPressed = true;
  if (hadPressed && !mousePressed) {
    mouseReleased = true;
    hadPressed = false;
  }
  //initialize gif
  FallingStar.show();
  //mode framework
  if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==pause) {
    pause();
  } else if (mode==gameover) {
    gameover();
  } else if (mode == SELECT) {
    SELECT();
  } else {
    println("Error: Mode = " + mode);
  }
}
