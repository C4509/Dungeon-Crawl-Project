class Button extends GameObject {
  //instance variables
  int le;
  int wi;
  int xco;
  int yco;
  color normal;
  color highlight;
  color border;
  String label;
  int size = 5;
//constructor
  Button(String p, int x, int y, int w, int l, color f1, color f2, color f3) {
    wi = w;
    le = l;
    yco = y;
    xco = x;
    normal = f1;
    highlight = f2;
    border = f3;
    label = p;
  }
  //behaviour functionss
  void show() {

    if (mouseX > xco && mouseX < xco + wi && mouseY > yco && mouseY < yco + le) {
      fill(highlight);
    } else {
      fill(normal);
    }
    strokeWeight(5);
    stroke(border);
    rect(xco, yco, wi, le);
    fill(0);
    textSize(60);
    text(label,xco+30,yco+70);
  }
  void act() {
//check if button is clicked
    if (mousePressed&&mouseX > xco && mouseX < xco + wi && mouseY > yco && mouseY < yco + le) {
      clicked = true;
    } else {
      clicked = false;
    }
  }
}
