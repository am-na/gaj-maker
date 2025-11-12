class Motif {
  float x;
  float y;
  int size;
  //dragging variables
  boolean dragging = false;
  //boundary variables
  float xOffset;
  float yOffset;
  int gridSize = 20;
  
  


  Motif(float initalX, float initalY, int giveSize) {
    this.x = initalX;
    this.y = initalY;
    this.size = giveSize;
  }

  void update() {

    if (dragging) {
      x = xOffset + mouseX;
      y = yOffset + mouseY;
    }
  }
  
  boolean isClicked(float mousePosX, float mousePosY) {
    return dist(mousePosX, mousePosY, x, y) < size;
  }
  
  //boolean outBounds(float mousePosX, float mousePosY){
    
  //  if (mousePosX > bounds)
  //  return true;
  //}
  
  void pressed(float mousePosX, float mousePosY){
    if (isClicked(mousePosX,mousePosY)){
      dragging = true; 
      xOffset = x - mousePosX;
      yOffset = y - mousePosY;
    }
  }
  
  void released(){
    dragging = false;
    
    //used AI to learn how to create snappable grid 
    //prompted "using processing make objects that snap to a grid 
    x = round(x / gridSize) * gridSize;
    y = round(y / gridSize) * gridSize;
  }

  void display() {
    fill(175, 5, 5, 50);
    noStroke();
    if (dragging == true){
      stroke(255,30);
    }
    
    ellipse(x, y, size, size);
  }
}
