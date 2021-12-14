class BAG {
  //instance variables
  Weapon e;
  
  
  BAG(){

  }
  
  void act(){
    if(mode == SELECT){
  if (onekey){e = new Weapon();}
  if(twokey && e.s == true){e = new Shooter();}
  if (threekey && e.r){e = new Rifle();}
  if (fourkey && e.g){e = new Gun();}
    }
    
  }
  
  
  
  
}
