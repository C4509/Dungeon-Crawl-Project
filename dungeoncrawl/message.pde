class Message extends GameObject {
  //instance variables
  String m;
  int op;
  //constructor
  Message(PVector loc, String v){
    location = loc;
    m = v;
    op = 0;
  }
  //behaviour functions
    void show(){
      fill(255, op);
      op = op + 5;
      text(m, location.x, location.y);
      
    }
    
    void act(){
      
    }
}
  
  
  
  
  
  
  
  
  
  
  
  
  
