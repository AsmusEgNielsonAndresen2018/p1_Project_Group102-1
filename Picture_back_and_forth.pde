// billeder / slides 
PImage DonVito;
PImage Scarry;
PImage VeryDank;

// galleri størrelse 
int galX=0;
int galY=0;
int galW=750;
int galH=600;

// funtionen der skifter frem og tilbage 
int state;

// knappe størrelserne som går frem og tilbage
int arSize=80;
int arRX=galW-100;
int arRY=arSize/2+galH/2+galY/2;
int arLX=galX+20;
int arLY=arSize/2+galH/2+galY/2;

void setup() {
  background(#FFFFFF);               
  size(750,600);                     

DonVito = loadImage("Don-Vito_grande.jpg");
Scarry = loadImage("image0.png");
VeryDank = loadImage("rFjcOpH.jpg");

}
void draw() {
 
  stroke(0);
  noFill();
// De forskellige cases
  switch(state) {
  case 0:
    DonVito();
    break;

  case 1:
    Scarry();
    break;

  case 2:
    VeryDank();
    break;
  }

}


void mousePressed() {
// Funktionen der gør at man kan gå frem og tilbage
  if (state==0 && mouseX>=arRX && mouseX<=arSize+arRX && mouseY>=arRY && mouseY<=arRY+arSize) { //switches state
    state+=1;
  } else if (state==1 && mouseX>=arRX && mouseX<=arSize+arRX && mouseY>=arRY && mouseY<=arRY+arSize) {//switches state
    state+=1;
  } else if (state==2 && mouseX>=arRX && mouseX<=arSize+arRX && mouseY>=arRY && mouseY<=arRY+arSize) {//switches state
    state=0;
  }

  if (state==0 && mouseX>=arLX && mouseX<=arSize+arLX && mouseY>=arLY && mouseY<=arLY+arSize) {//switches state
    state=2;
  } else if (state==2 && mouseX>=arLX && mouseX<=arSize+arLX && mouseY>=arLY && mouseY<=arLY+arSize) {//switches state
    state-=1;
  } else if (state==1 && mouseX>=arLX && mouseX<=arSize+arLX && mouseY>=arLY && mouseY<=arLY+arSize) {//switches state
    state=0;
  }
}

// at billederne går fra kant til kant
void DonVito() {
  image(DonVito, galX, galY, galW, galH);
}

void Scarry() {
  image(Scarry, galX, galY, galW, galH);
}

void VeryDank() {
  image(VeryDank, galX, galY, galW, galH);
  
}
