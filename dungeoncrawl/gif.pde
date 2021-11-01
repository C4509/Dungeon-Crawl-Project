class AnimatedGIF{
  //instance variables
  int numFrames;
  PImage[] images;
  int currframe;
  
  //constructor
  AnimatedGIF(int nf, String pre, String post){
    numFrames = nf;
    images = new PImage[numFrames];
    int i = 0;
    while(i<numFrames){
      images[i]=loadImage(pre+i+post);
      i++;
    }
    currframe=0;
  }
  
  
  
  
  //behaviour functions
  
  void show(){
    imageMode(CENTER);
    if(currframe==numFrames)currframe=0;
    image(images[currframe],width/2,height/2, width,height );
    currframe++;
    
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
