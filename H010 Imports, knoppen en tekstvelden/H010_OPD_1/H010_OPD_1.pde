import controlP5.*;

ControlP5 cp;

Button knop1;   
Button knop2; 

void setup(){
  size(500,500);
  
  cp = new ControlP5(this);
  knop1 = cp.addButton("Knop1")
             .setSize(100,50)
             .setPosition(50,50)
             .setCaptionLabel("Klik mij");
   knop2 = cp.addButton("Knop2")
             .setSize(100,50)
             .setPosition(250,50)
             .setCaptionLabel("Klik mij");
  
}

void draw(){
    background(100,100,100);
}
void Knop1(){
  println("Helaas fout!");
}

void Knop2(){
  println("Goed gedaan!");
}
