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
}
