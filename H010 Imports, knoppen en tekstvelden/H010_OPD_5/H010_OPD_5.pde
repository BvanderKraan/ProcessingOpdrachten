import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;
Button knop3;
Button knop4;

Textfield tekstveld1;
Textfield tekstveld2;

float berekening;
void setup(){
    size(500,500);
    background(0,0,0);
    
    
    
       cp = new ControlP5(this);
       knop1 = cp.addButton("Knop1")
               .setSize(20,20)
               .setPosition(310,180)
               .setColorLabel(color(0,0,0))
               .setColorBackground(color(255,255,255))
               .setCaptionLabel("*");
               
        knop2 = cp.addButton("Knop2")
               .setSize(20,20)
               .setPosition(340,180)
               .setColorLabel(color(0,0,0))
               .setColorBackground(color(255,255,255))
               .setCaptionLabel("/");
        
        knop3 = cp.addButton("Knop3")
               .setSize(20,20)
               .setPosition(370,180)
               .setColorLabel(color(0,0,0))
               .setColorBackground(color(255,255,255))
               .setCaptionLabel("+");
               
        knop4 = cp.addButton("Knop4")
               .setSize(20,20)
               .setPosition(400,180)
               .setColorLabel(color(0,0,0))
               .setColorBackground(color(255,255,255))
               .setCaptionLabel("-");
               
        tekstveld1 = cp
              .addTextfield("Textinput1")
              .setPosition(80,180)
              .setSize(100,20)
              .setText("0")
              .setCaptionLabel("calculator")
              .setColorLabel(color(255,255,255));
              
        tekstveld2 = cp
              .addTextfield("Textinput2")
              .setPosition(200,180)
              .setSize(100,20)
              .setCaptionLabel("")
              .setText("0")
              .setColorLabel(color(255,255,255));      
}

void draw(){
    background(0);
    text(berekening,200,250);
}

void Knop1(){
 berekening = float(tekstveld1.getText()) *float(tekstveld2.getText());
 text(berekening,200,250);
}

void Knop2(){
berekening = float(tekstveld1.getText()) /float(tekstveld2.getText());
text(berekening,200,250);
}

void Knop3(){
berekening = float(tekstveld1.getText()) +float(tekstveld2.getText());
text(berekening,200,250);
}


void Knop4(){
berekening = float(tekstveld1.getText()) -float(tekstveld2.getText());
text(berekening,200,250);
}
