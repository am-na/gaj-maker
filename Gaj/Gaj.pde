Motif m1;
tangleMotif t1;
squareMotif sq1, sq2;
smallCircle c1, c2;
//ArrayList motifMore = new ArrayList <Motif>();
ArrayList<Motif> motifMore;
ArrayList<Button> buttons;
int bounds = 920;

Button addButton;
squareButton sb;
tangleButton tb ;

void setup() {
  size(1260, 720);
  
  buttons = new ArrayList<Button>();
  addButton = new Button(1000, 100, 40);
  sb = new squareButton(1100,100,40);
  tb = new tangleButton(1000,200,40);
  buttons.add(addButton);
  buttons.add(sb);
  buttons.add(tb);
  
  motifMore = new ArrayList<Motif>();
  t1 = new tangleMotif (random(bounds), random(height), 40);
  //m1 = new Motif(random(width), random(height), 40);
  //sq1 = new squareMotif(int (random(bounds)),int( random(height)), 40);
  //c1 = new smallCircle(int (random(bounds)),int( random(height)), 20);
  //sq2 = new squareMotif(int (random(bounds)),int( random(height)), 40);
  //c2 = new smallCircle(int (random(bounds)),int( random(height)), 20);
 // motifMore.add(m1);
  //motifMore.add(c1);
  //motifMore.add(sq1);
  //motifMore.add(c2);
  motifMore.add(t1);

}

void draw() {
  background(39,39,43);
  grid(40,20);  
  
  for (int i = 0; i<buttons.size(); i += 1) {
   Button b = (Button)buttons.get(i);
    b.display();
  }
  
  // Draw the box
  for (int i = 0; i<motifMore.size(); i += 1) {
    Motif tempM = (Motif) motifMore.get(i);
    tempM.update();
    tempM.display();
    println(i+1);
  }
   
}

void mousePressed() {
  
 if (addButton.isClicked(mouseX, mouseY)) {
    motifMore.add(new Motif(random(bounds), random(height), 40));
  }
  
  if (sb.isClicked(mouseX, mouseY)) {
    motifMore.add(new squareMotif(random(bounds), random(height), 40));
  }
  
  if (tb.isClicked(mouseX, mouseY)){
    motifMore.add(new tangleMotif(random(bounds), random(height), 40));
  }

    for (Motif tempM : motifMore) {
      tempM.pressed(mouseX, mouseY);
    }
}

void mouseReleased() {
    for (Motif tempM : motifMore) {
      tempM.released();
    
    
    //if (tempM.outBounds(mouseX, mouseY)){
    //    tempM.remove(tempM);    
    //  }

}
}
