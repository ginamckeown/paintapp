boolean button1= false;
boolean button2= false;
int r, g, b;

int size, brushSize, sizeX, sizeY;


void setup() {
  size(600, 600);
  background(52, 94, 235);
  r = 212;
  g = 47;
  b = 201;
  size=10;
  sizeX=570;
  sizeY=100;
  brushSize=10;
}
void draw() {
  fill(255);
  rect(20, 20, 30, 30);
  fill(255);
  stroke(1);
  rect(20, 20, 30, 30);
  ellipse(sizeX, sizeY, size, size);
  ellipse(sizeX, sizeY+30, size+10, size+10);
  ellipse(sizeX, sizeY+70, size+20, size+20);
  ellipse(sizeX, sizeY+120, size+30, size+30);
  ellipse(sizeX, sizeY+180, size+40, size+40);

  if (mousePressed == true) {
    rect(80, 20, 30, 30);

    fill(r, g, b);
    noStroke();
    ellipse(mouseX, mouseY, brushSize, brushSize);

    if (button2) {
      r=52;
      g=235;
      b=94;
    }

    if (button1) {
      r = 212;
      g = 47;
      b = 201;
    }


    if (mouseX<50 && mouseX>20 && mouseY>20 && mouseY<50) {
      button1=true; 
      button2 = false;
    }

    if (mouseX<100 && mouseX>20 && mouseY>20 && mouseY<100) {
      button2=true; 
      button1 = false;
    }

    if (mouseX<50 && mouseX>20 && mouseY>20 && mouseY<50) {
      button1=true;
    }


    if (mouseX>565 && mouseX<575 && mouseY>90 && mouseY<110) {
      brushSize=10;
    } else if (mouseX>560 && mouseX<580 && mouseY>120 && mouseY<140) {
      brushSize=20;
    } else if (mouseX>555 && mouseX<585 && mouseY>150 && mouseY<180) {
      brushSize=30;
    } else if (mouseX>550 && mouseX<590 && mouseY>180 && mouseY<220) {
      brushSize=40;
    } else if (mouseX>550 && mouseX<590 && mouseY>250 && mouseY<300) {
      brushSize=50;
    }
  }
}
