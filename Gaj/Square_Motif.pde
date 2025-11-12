class squareMotif extends Motif{
  
  squareMotif(float x, float y, int size){
    super(x,y,size);
  }
  
  
 @Override
  void display() {
    fill(0,0,255);
    stroke(0);
    rectMode(CENTER);
    rect(x, y, size, size);
  }

  @Override
  boolean isClicked(float mx, float my) {
    return abs(mx - x) < size / 2 && abs(my - y) < size / 2;
  }

  
}

class squareButton extends Button{
  
  squareButton(int x, int y, int size){
    super(x,y,size);
  }
  
  @Override
  void display() {
    fill(175, 5, 5, 50);
    stroke(0);
    rectMode(CENTER);
    rect(x, y, size, size);
    
  }
  
  @Override
  boolean isClicked(float mx, float my) {
    return abs(mx - x) < size / 2 && abs(my - y) < size / 2;
  }
    
  }
  
