class Message extends GameObject {
  //instance variables
  String m;
  int op;
  //constructor
  Message(PVector loc, String v, int rx,int ry){
    location = loc;
    m = v;
    op = 255;
    hp = 10;
    velocity = new PVector(1,1);
    roomx = rx;
    roomy = ry;
  }
  //behaviour functions
    void show(){
      fill(255,op);
    op = op - 5;
      text(m, location.x, location.y);
    }
    
    void act(){
      super.act();
    }
}
  
  
  
  
  
  
  
  
  
  
  
  
  
