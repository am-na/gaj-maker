
void gui(){
  shape(title,995,40,200,172);
  noStroke();
  fill(96,96,96,33);
  rectMode(CORNER);
  rect(940,20,300,680);
}

void grid(int gridSize, int miniGrid){
  int column = 920;
  int row = height;

  
  for (int j = 0; j < row; j+= gridSize) { // j is counting the amount of rows 
    line(column, j, 0, j);
    stroke(96,96,96,33);
    
    int lineYPos = (j + 1)+ gridSize;
    if (mouseY == lineYPos) {
      stroke(255,128,0,75);
    }
  }
  
  for (int j = 0; j < row; j+= miniGrid) { // j is counting the amount of rows 
    line(column, j, 0, j);
    stroke(96,96,96,13);
    
    int lineYPos = (j + 1)+ miniGrid;
    if (mouseY == lineYPos) {
      stroke(255,128,0,30);
    }
  }

  //Columns
  for (int i = 0; i < column+1; i+= gridSize) { //i is counting the amount of columns
    line(i, height, i, 0);
    stroke(96,96,96,33);

    int lineXPos = (i + 1) + gridSize;
    if (mouseX == lineXPos) {
      stroke(255,204,229,75);
    }
  }
  
    for (int i = 0; i < column; i+= miniGrid) { //i is counting the amount of columns
    line(i, height, i, 0);
    stroke(96,96,96,15);

    int lineXPos = (i + 1) + miniGrid;
    if (mouseX == lineXPos) {
      stroke(255,204,229,30);
    }
  }
}
