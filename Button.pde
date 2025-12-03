// button class color buttons
class Button {
  float x, y, w, h;
  color c;
  int ver;

  Button(float x, float y, int w, int h, color c, int ver) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
    this.ver= ver;
  }

  void display() {
    fill(c);
    stroke(0, 30);

    //display for color buttons
    if (ver==1) {
      ellipse(x, y, w, h);
    }

    //display for save button

    if (ver==2) {

      fill(249, 204, 202, 80);
      strokeWeight(1);
      stroke (249, 204, 202);
      rect(x, y, w, h);
      textSize(16);
      text("save", x-15, y+5);
    }
  }

  //checking for mouse over object
  boolean isClicked(float mousePosX, float mousePosY) {
    return dist(mousePosX, mousePosY, x, y) < w/2;
  }
}
