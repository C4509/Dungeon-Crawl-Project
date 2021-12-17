void keyPressed() {
  if (keyCode == UP) { 
    upkey = true;
  }
  if (keyCode == DOWN) { 
    downkey = true;
  }
  if (keyCode == RIGHT) { 
    rightkey = true;
  }
  if (keyCode == LEFT) { 
    leftkey = true;
  }
  if (keyCode == ' ') { 
    spacekey = true;
  }
  if (keyCode == 'a' || keyCode == 'A') { 
    akey = true;
  }
    if (keyCode == 'p' || keyCode == 'P') { 
    pkey = true;
  }
  if(keyCode == '1'|| keyCode == '!'){
    onekey = true;
  }
   if(keyCode == '2'|| keyCode == '@'){
    twokey = true;
  }
    if(keyCode == '3'|| keyCode == '#'){
    threekey = true;
  }
    if(keyCode == '4'|| keyCode == '$'){
    fourkey = true;
  }
}

void keyReleased() {
  if (keyCode == UP) { 
    upkey = false;
  }
  if (keyCode == DOWN) { 
    downkey = false;
  }
  if (keyCode == RIGHT) { 
    rightkey = false;
  }
  if (keyCode == LEFT) { 
    leftkey = false;
  }
  if (keyCode == ' ') { 
    spacekey = false;
  }
    if (keyCode == 'a' ||keyCode == 'A') { 
    akey = false;
  }
    if (keyCode == 'p' || keyCode == 'P') { 
    pkey = false;
  }
   if(keyCode == '1'|| keyCode == '!'){
    onekey = false;
  }
   if(keyCode == '2'|| keyCode == '@'){
    twokey = false;
  }
    if(keyCode == '3'|| keyCode == '#'){
    threekey = false;
  }
    if(keyCode == '4'|| keyCode == '$'){
    fourkey = false;
  }
}
