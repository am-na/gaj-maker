//Motif subclass
class flowerMotif extends Motif{
  
  flowerMotif(float x, float y, float size,color shapeColor){
    super(x,y,size, shapeColor);
  }
  
 //overrides the display to draw a Triangle 
 @Override
  void display() {
    fill(shapeColor);

   push();
   translate(x, y);
    drawFlower(8);
   pop();
  }

  void drawFlower(int petalCount) {
    scale(.26);
    for (int i = 0; i < petalCount; i++) {
      pushMatrix();
      rotate(TWO_PI * i / petalCount); // Rotate each petal evenly
      translate(0, 100); // Move petals outward from center
      drawPetal();
      popMatrix();
    }
    fill(255,255,0);
    noStroke();
    //ellipse(0,0,140,140);
   
  }

  
  void drawPetal(){
    push();
      noStroke();
      beginShape();
      vertex(0, -50);
      bezierVertex(25, -50, 40, -15, 40, 10);
      bezierVertex(40, 35, 25, 50, 0, 50);
      bezierVertex(-25, 50, -40, 35, -40, 10);
      bezierVertex(-40, -15, -25, -50, 0, -50);
      endShape();
    pop();
  }
  
  

  @Override
  boolean isClicked(float mx, float my) {
    return abs(mx - x) < 80 / 2 && abs(my - y) < 80 / 2;
  }

  
}
