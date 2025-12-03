//Motif subclass
class lineMotif extends Motif {
  int rectWidth = 40;
  int rectHeight = 10;
  int r;

  lineMotif(float x, float y, int size, color shapeColor, int rotateAngle) {
    super(x, y, size, shapeColor);
    this.r = rotateAngle;
  }

  @Override
  void display() {
    fill(shapeColor);
    noStroke();
    pushMatrix();
    translate (x,y);
    rotate(radians(r));
    drawShape();
    popMatrix();
  }
  
  void drawShape(){
    rectMode(CENTER);
    
    rect(0, 0, rectWidth, rectHeight);
    // Left triangle
    beginShape();
    vertex(0 - rectWidth/2, 0 - rectHeight/2);
    vertex(0 - rectWidth/2, 0 + rectHeight/2);
    vertex(0 - rectWidth/2 - rectHeight/2, 0);
    endShape(CLOSE);
  
    // Right triangle
    beginShape();
    vertex(0 + rectWidth/2, 0 - rectHeight/2);
    vertex(0 + rectWidth/2, 0 + rectHeight/2);
    vertex(0 + rectWidth/2 + rectHeight/2, 0);
    endShape(CLOSE);
}

@Override
  boolean isClicked(float mx, float my) {
  return abs(mx - x) < rectWidth / 2 && abs(my - y) < rectHeight / 2;
}
}
