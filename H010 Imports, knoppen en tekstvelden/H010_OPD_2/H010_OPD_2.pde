import controlP5.*;

ControlP5 cp;

Button knop1;
Textfield tekstveld1;

void setup(){
  size(500,500);
  
    cp = new ControlP5(this);
    knop1 = cp.addButton("Knop1")
           .setSize(200,100)
           .setPosition(225,225)
           .setColorLabel(color(0,0,0))
           .setColorBackground(color(255,255,255))
           .setCaptionLabel("Knop");
   tekstveld1 = cp
            .addTextfield("Textinput1")
            .setPosition(150,180)
            .setText("Brandon")
            .setCaptionLabel("Mijn naam") 
            .setColorLabel(color(255,255,255));        

}

void draw(){
  background(200,200,200);
}
void Knop1(){
  println("Hoi mijn naam is. " + tekstveld1.getText());
}
