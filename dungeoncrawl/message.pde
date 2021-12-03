class Message extends GameObject {
  //instance variables
  String m;
  int op;
  //constructor
  Message(PVector loc, String v){
    location = loc;
    m = v;
    op = 0;
    hp = 1;
    //roomx = rx;
    //roomy = ry;
  }
  //behaviour functions
    void show(){
      fill(255);
    op = op - 1;
      text(m, location.x, location.y);
      
    }
    
    void act(){
      
    }
}
  
  
  
  
  
  
  
  
  
  
  
  
  
