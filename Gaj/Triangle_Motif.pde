//Motif subclass
class tangleMotif extends Motif {
  int flip;
  tangleMotif(float x, float y, int size, color shapeColor, int flip) {
    super(x,y,size, shapeColor);
    this.flip = flip;
  }

//overrides the display to draw a Triangle 
  @Override
  void display() {
    fill(shapeColor);
    noStroke();
    float h = (size * sqrt(3) / 2)*flip;
    beginShape();
    vertex(x, y - h / 2);
    vertex(x - size / 2, y + h / 2);
    vertex(x + size / 2, y + h / 2);
    endShape(CLOSE);
  }

  @Override
  boolean isClicked(float mx, float my) {
    float h = size * sqrt(3) / 2;
    return mx > x - size / 2 && mx < x + size / 2 && my > y - h / 2 && my < y + h / 2;
  }
}
