class Button {
  float x, y, size;

  Button(float x, float y, int size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }

  void display() {
    fill(175, 5, 5, 50);
    stroke(0);
    ellipse(x, y, size, size );
    
  }

  boolean isClicked(float mousePosX, float mousePosY) {
    return dist(mousePosX, mousePosY, x, y) < size;
  }
}
