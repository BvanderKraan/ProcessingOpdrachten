import controlP5.*;

ControlP5 cp;

Button knop1;
Textfield tekstveld1;

float BTW;

void setup(){
  size(500,500);
  background(0,0,0);


    cp = new ControlP5(this);
    knop1 = cp.addButton("Knop1")
           .setSize(100,50)
           .setPosition(150,225)
           .setColorLabel(color(0,0,0))
           .setColorBackground(color(255,255,255))
           .setCaptionLabel("Bereken");
tekstveld1 = cp
            .addTextfield("Textinput1")
            .setPosition(150,180)
            .setText("100")
            .setCaptionLabel("Prijs") 
            .setColorLabel(color(255,255,255));
            
         BTW = int(tekstveld1.getText()) /100*121;

}

void draw(){
  background(0,0,0);
    textSize(12);
  text(BTW,365,190);

}
void Knop1(){
  BTW = float(tekstveld1.getText()) / 100 *121;
  fill(255,255,255);
  textSize(12);
  text(BTW,365,190);


}
