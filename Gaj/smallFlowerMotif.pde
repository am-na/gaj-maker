//Motif subclass
class smallFlowerMotif extends Motif {

  smallFlowerMotif(float x, float y, float size, color shapeColor) {
    super(x, y, size, shapeColor);
  }


  @Override
    void display() {
    fill(shapeColor);
    rectMode(CENTER);


    push();
    translate(x, y);
    drawFlower(4);
    pop();
  }

  void drawFlower(int petalCount) {
    scale(.18);
    for (int i = 0; i < petalCount; i++) {
      pushMatrix();
      rotate(TWO_PI * i / petalCount); // Rotate each petal evenly
      translate(0, 60); // Move petals outward from center
      drawPetal();
      popMatrix();
    }
  }

  void drawPetal() {
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
    return abs(mx - x) < 40 / 2 && abs(my - y) < 40 / 2;
  }
}
