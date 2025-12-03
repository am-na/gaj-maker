//Motif button variables
Motif cb, scb;
tangleMotif tb1, tb2;
squareMotif sqb;
flowerMotif fb;
smallFlowerMotif sfb;
lineMotif lb1, lb2;

//coloured button Variables

Button redButton, blueButton, purpleButton, yellowButton, orangeButton, lightYellowButton, pinkButton, silverButton;
Button save;

color selectedColor = color(100, 93, 93);
color buttonColor = color(255, 50);

//Arrays to initialize all buttons
ArrayList<Motif> motifMore;
ArrayList<Motif> buttons;
ArrayList<Button> colorButtons;

//grid size
int bounds = 920;

//adding the logo image
PShape title;


void setup() {
  size(1260, 720);
  title = loadShape("title.svg");

  //initalize all motif buttons and add them to buttons array
  buttons = new ArrayList<Motif>();
  cb = new Motif(1000, 280, 40, buttonColor);
  sqb = new squareMotif(1090, 280, 40, buttonColor);
  tb1 = new tangleMotif(1180, 280, 40, buttonColor, 1);
  tb2 = new tangleMotif(1180, 350, 40, buttonColor, -1);
  sfb = new smallFlowerMotif(1110, 350, 1, buttonColor);
  lb1 = new lineMotif (1000, 350, 1, buttonColor, 45);
  lb2 = new lineMotif (1040, 350, 1, buttonColor, -45);
  scb = new Motif (1160, 420, 20, buttonColor);
  fb = new flowerMotif(1060, 420, 1, buttonColor);


  buttons.add(cb);
  buttons.add(scb);
  buttons.add(sqb);
  buttons.add(tb1);
  buttons.add(tb2);
  buttons.add(fb);
  buttons.add(sfb);
  buttons.add(lb1);
  buttons.add(lb2);

  //initalize all color buttons and add them to array colo Buttons
  colorButtons = new ArrayList <Button>();
  redButton = new Button (990, 500, 40, 40, color(173, 31, 34), 1);
  blueButton = new Button (1055, 500, 40, 40, color(76, 72, 116), 1 );
  purpleButton = new Button (1125, 500, 40, 40, color(122, 44, 76), 1);
  yellowButton = new Button (1190, 500, 40, 40, color(192, 159, 70), 1 );
  orangeButton = new Button (990, 550, 40, 40, color(225, 130, 66), 1);
  lightYellowButton = new Button (1055, 550, 40, 40, color(215, 210, 173), 1 );
  pinkButton = new Button (1125, 550, 40, 40, color(166, 19, 69), 1);
  silverButton = new Button (1190, 550, 40, 40, color(201, 208, 218), 1 );

  colorButtons.add(redButton);
  colorButtons.add(blueButton);
  colorButtons.add(purpleButton);
  colorButtons.add(yellowButton);
  colorButtons.add(orangeButton);
  colorButtons.add(lightYellowButton);
  colorButtons.add(pinkButton);
  colorButtons.add(silverButton);

  save = new Button (1100, 650, 90, 40, color(255, 0, 0), 2);

  //create an empty array for all the motif objects that will be created when the buttons are pressed
  motifMore = new ArrayList<Motif>();
}

void draw() {
  background(39, 39, 43);
  gui();
  grid(40, 20);


  //displaying the motif buttons
  for (int i = 0; i<buttons.size(); i += 1) {
    Motif mb = (Motif)buttons.get(i);
    mb.display();
  }

  //displaying the color buttons
  for (int i = 0; i<colorButtons.size(); i += 1) {
    Button b = colorButtons.get(i);
    b.display();
  }
  // draw the save button
  save.display();

  // drawing the motifs that are created
  for (int i = 0; i<motifMore.size(); i += 1) {
    Motif m = motifMore.get(i);
    m.update();
    m.display();
  }
}


void mousePressed() {

  //varaibles to create motifs within the grid area
  float posX = random(10, bounds-10);
  float posY = random(10, height-10);


  // the mouse pressed check over the button to create the corressponding Motif
  if (cb.isClicked(mouseX, mouseY)) {
    motifMore.add(new Motif(posX, posY, 40, selectedColor));
  }

  if (scb.isClicked(mouseX, mouseY)) {
    motifMore.add(new Motif(posX, posY, 20, selectedColor));
  }

  if (sqb.isClicked(mouseX, mouseY)) {
    motifMore.add(new squareMotif(posX, posY, 40, selectedColor));
  }

  if (tb1.isClicked(mouseX, mouseY)) {
    motifMore.add(new tangleMotif(posX, posY, 40, selectedColor, 1));
  }

  if (tb2.isClicked(mouseX, mouseY)) {
    motifMore.add(new tangleMotif(posX, posY, 40, selectedColor, -1));
  }

  if (fb.isClicked(mouseX, mouseY)) {
    motifMore.add(new flowerMotif(posX, posY, 1, selectedColor));
  }

  if (sfb.isClicked(mouseX, mouseY)) {
    motifMore.add(new smallFlowerMotif(posX, posY, 1, selectedColor));
  }

  if (lb1.isClicked(mouseX, mouseY)) {
    motifMore.add(new lineMotif(posX, posY, 10, selectedColor, 45));
  }

  if (lb2.isClicked(mouseX, mouseY)) {
    motifMore.add(new lineMotif(posX, posY, 10, selectedColor, -45));
  }

  //picking what color to make the motifs
  if (redButton.isClicked(mouseX, mouseY)) {
    selectedColor = color(173, 31, 34);
  }

  if (blueButton.isClicked(mouseX, mouseY)) {
    selectedColor = color(76, 72, 116);
  }

  if (purpleButton.isClicked(mouseX, mouseY)) {
    selectedColor = color(122, 44, 76);
  }

  if (yellowButton.isClicked(mouseX, mouseY)) {
    selectedColor = color(192, 159, 70);
  }

  if (orangeButton.isClicked(mouseX, mouseY)) {
    selectedColor = color(225, 130, 66);
  }

  if (lightYellowButton.isClicked(mouseX, mouseY)) {
    selectedColor = color(215, 210, 173);
  }

  if (pinkButton.isClicked(mouseX, mouseY)) {
    selectedColor = color(166, 19, 69);
  }

  if (silverButton.isClicked(mouseX, mouseY)) {
    selectedColor = color(201, 208, 218);
  }

  //save the frame to your computer
  if (save.isClicked(mouseX, mouseY)) {
    saveFrame("embroider-#.jpg");
    println("saved");
  }

  //for dragging the motifs that are created in the grid
  for (int i = 0; i<motifMore.size(); i += 1) {
    Motif m = motifMore.get(i);
    m.pressed(mouseX, mouseY);
  }
}


void mouseReleased() {

  // checks if you are still holding the motif and to remove it if the position is out of bounds
  for (int i = 0; i<motifMore.size(); i += 1) {
    Motif m = motifMore.get(i);
    m.released();
    if (m.x > bounds ) {
      motifMore.remove(i);
    }
  }
}
