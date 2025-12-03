class Motif {
  float x;
  float y;
  float size;
  //dragging variables
  boolean dragging = false;
  //boundary variables
  float xOffset;
  float yOffset;
  int gridSize = 20;
  //color
  color shapeColor;


  Motif(float initalX, float initalY, float giveSize, color shapeColor) {
    this.x = initalX;
    this.y = initalY;
    this.size = giveSize;
    this.shapeColor = shapeColor;
  }

  //updates the central position of the object as it move
  void update() {

    if (dragging) {
      x = xOffset + mouseX;
      y = yOffset + mouseY;
    }
  }

  //checking for mouse over object
  boolean isClicked(float mousePosX, float mousePosY) {
    return dist(mousePosX, mousePosY, x, y) < size;
  }

  //checks if mouse over object and  pressed

  void pressed(float mousePosX, float mousePosY) {
    if (isClicked(mousePosX, mousePosY)) {
      dragging = true;
      fill(155, 155, 155);
      xOffset = x - mousePosX;
      yOffset = y - mousePosY;
    }
  }

  void released() {
    dragging = false;

    //used AI to learn how to create snappable grid
    //prompted "using processing make objects that snap to a grid
    x = round(x / gridSize) * gridSize;
    y = round(y / gridSize) * gridSize;
  }

  //draws the circle shaped object

  void display() {
    fill(shapeColor);
    noStroke();
    if (dragging == true) {
      stroke(255, 30);
    }

    ellipse(x, y, size, size);
  }
}
