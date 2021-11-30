class AnimatedGIF{
  //instance variables
  int numFrames;
  PImage[] images;
  int currframe;
  int rate;
  
  //constructor
  AnimatedGIF(int nf, String pre, String post){
    numFrames = nf;
    rate = 1;
    images = new PImage[numFrames];
    int i = 0;
    while(i<numFrames){
      images[i]=loadImage(pre+i+post);
      i++;
    }
    currframe=0;
  }
  
    AnimatedGIF(int nf, int r, String pre, String post){
    numFrames = nf;
    rate = r;
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
   if (frameCount % rate == 0){ currframe++;}
    
  }
  
  void show(float x, float y, float w, float h){
    if(currframe >= images.length){ currframe = 0;}
       image(images[currframe],x,y, w,h);
   if (frameCount % rate == 0){ currframe++;}
  
  
  
  
  
  }
  
  
  
  
  
  
}
