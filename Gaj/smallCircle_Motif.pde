class smallCircle extends Motif{
  
  smallCircle(int x, int y, int size){
    super(x,y,size);
    this.size = 20;
  }
  
  
 @Override
  void display() {
    fill(0,0,255);
    stroke(0);
    ellipse(x,y, size, size);
  }
}
