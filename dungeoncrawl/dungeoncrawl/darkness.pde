class Darkness {
  //instance variables
  float opacity;
  float x, y, size;
  float d;
  //constructors
  Darkness(float xc, float yc, float s){
    x = xc;
    y = yc;
    size = s;
    opacity = 255;
    
    
  }
  //behaviour functions
  void show(){
d = dist(x,y,myHero.location.x,myHero.location.y);
    opacity = map(d,0,350,0,255);
  noStroke();
fill(0,opacity);
    square(x,y,size);
    
    
  }
  
  
  
}
