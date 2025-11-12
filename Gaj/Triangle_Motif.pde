class tangleMotif extends Motif {

  tangleMotif(float x, float y, int size) {
    super(x,y,size);
  }

  @Override
  void display() {
    fill(90,80,70);
    stroke(0);
    float h = size * sqrt(3) / 2;
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


class tangleButton extends Button{
  
  tangleButton(int x, int y, int size){
    super(x,y,size);
  }
  
  @Override
  void display() {
    fill(255);
    stroke(0);
    float h = size * sqrt(3) / 2;
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
