int column;
int row;
int size = 40;
float lineXPos;
float lineYPos;

float bx, by;
int boxSize = 20;
boolean overBox = false;
boolean duplicate = false;
boolean clicked = false;
boolean locked = false;
float xOffset = 0.0;
float yOffset = 0.0;

Motif m1;
ArrayList motifMore = new ArrayList();

void setup() {
  size(960, 720);
  column = int(width / size) + 1;
  row = int(height / size) + 1;

  bx = width / 2.0;
  by = height / 2.0;

  rectMode(RADIUS);
  
    
  m1 = new Motif(100, 100, boxSize);
  motifMore.add(m1);
}

void draw() {
  background(255);
  grid();  


  for (int i = 0; i<motifMore.size(); i += 1) {
    Motif tempM = (Motif) motifMore.get(i);
    tempM.display();
  }
  
  if (mouseX > bx - boxSize && mouseX < bx + boxSize &&
    mouseY > by - boxSize && mouseY < by + boxSize) {

    overBox = true;

    if (!locked) {
      fill(255,0,0);
    }

  } else {
    fill(0,0,255);
    overBox = false;
  }
  // Draw the box
  rect(bx, by, boxSize, boxSize);
}

//void keyPressed() {
//  if (key == 'c') {
//    Motif tempM = new Motif(random(20,width-20), random(20,height-20), boxSize);
//    motifMore.add(tempM);
//  }
//}

class Motif {
  float x;
  float y;
  int size;
  
  
  Motif(float initalX, float initalY, int giveSize) {
    x = initalX;
    y = initalY;
    size = giveSize;
  }

  void display() {
    fill(255,255,0);
    rect(x, y, size,size);
  }

}


void grid(){
  
  for (int j = 0; j < row; j++) { // j is counting the amount of rows 
    line(width, j * size, 0, j * size);
    stroke(0,0,255);

    lineYPos = (j + 1) * size;

    if (mouseY == lineYPos) {
      stroke(255,128,0);
    }
  }

  //Columns
  for (int i = 0; i < column; i++) { //i is counting the amount of columns
    line(i * size, height, i * size, 0);
    stroke(0,255,0);

    lineXPos = (i + 1) * size;

    if (mouseX == lineXPos) {
      stroke(255,204,229);
    }
  }
}
  
  
 void mousePressed() {
  if (overBox) {
    locked = true;
    fill(255, 255, 255);
    
  } else {
    locked = false;
    
  }
 if (locked == true) {
    Motif tempM = new Motif(random(20,width-20), random(20,height-20), boxSize);
    motifMore.add(tempM);
  }
  xOffset = mouseX - bx;
  yOffset = mouseY - by;
}

void mouseDragged() {
  if (locked) {
    bx = mouseX - xOffset;
    by = mouseY - yOffset;
  }
}

void mouseReleased() {
  locked = false;
  clicked = false;

}
