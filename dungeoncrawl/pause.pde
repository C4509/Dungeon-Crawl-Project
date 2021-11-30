void pause() {
  background(aqua);
  textSize(60);

  strokeWeight(3);
  B.add(new Button("a", 150, 120, 50, 50, 255,0,255,orange));
  B.add(new Button("a", 150, 270, 50, 50, 255,0,255,orange));
  B.add(new Button("a", 150, 420, 50, 50, 255,0,255,orange));
  B.add(new Button("a", 150, 570, 50, 50, 255,0,255,orange));
    fill(lavender);
  text("XP:"+ myHero.xp, 230, 170);
  text("HP:"+ myHero.hp, 230, 320);
  text("Speed"+ myHero.speed, 230, 470);
  text("Damage:"+ myHero.speed, 230, 620);
  //initialize button class
  int i = 0;
  while (i <   B.size()) {
    Button b =   B.get(i);
    b.act();   
    b.show();
    i++;
  }
}

void pauseClicks() {
}
