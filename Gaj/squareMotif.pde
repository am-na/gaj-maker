//Motif subclass
class squareMotif extends Motif{
  
  squareMotif(float x, float y, int size, color shapeColor){
    super(x,y,size, shapeColor);
  }
  
  
 @Override
  void display() {
    fill(shapeColor);
    noStroke();
    rectMode(CENTER);
    rect(x, y, size, size);
  }

  @Override
  boolean isClicked(float mx, float my) {
    return abs(mx - x) < size / 2 && abs(my - y) < size / 2;
  }

  
}
