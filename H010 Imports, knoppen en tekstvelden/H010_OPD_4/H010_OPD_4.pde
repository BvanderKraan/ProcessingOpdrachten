import controlP5.*;

int Studenten = 0;
int Ouders = 0;
int totaal;
ControlP5 cp;

Button knop1;
Button knop2;

void setup(){
  size(500,500);
  background(0,0,0);
  
    cp = new ControlP5(this);
    knop1 = cp.addButton("Knop1")
            .setSize(100,50)
            .setPosition(100,100)
            .setColorLabel(color(0,0,0))
            .setColorBackground(color(255,255,255))
            .setCaptionLabel("Studenten");
   
    knop2 = cp.addButton("Knop2")
            .setSize(100,50)
            .setPosition(300,100)
            .setColorLabel(color(0,0,0))
            .setColorBackground(color(255,255,255))
            .setCaptionLabel("Ouders");
}

void draw(){
  background(0);
  text(Ouders,400,100);
  text(Studenten,200,100);
      totaal = Ouders + Studenten;
      println(totaal);
}

void Knop1(){
 textSize(18);
  Studenten++;
 
}

void Knop2(){
 textSize(18);
  Ouders++;
}
