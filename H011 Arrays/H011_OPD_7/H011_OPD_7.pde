import controlP5.*;

ControlP5 cp;

Button knop1;
Textfield tekstveld1;

String[] namen = new String[10];
int teller = -1;
int locatie = 5;
boolean A;
void setup(){
    size(800,700);
    background(0,0,0);

            
           cp = new ControlP5(this);
            knop1 = cp.addButton("Knop1")
               .setSize(50,50)
               .setPosition(300,100)
               .setColorLabel(color(0,0,0))
               .setColorBackground(color(60,20,255))
               .setCaptionLabel("Naam invoeren");
             tekstveld1 = cp
              .addTextfield("Textinput1")
              .setPosition(100,110)
              .setSize(180,25)
              .setText("0")
              .setCaptionLabel("Naam hier")
              .setColorLabel(color(255,255,255));  
            
}

void draw(){
    boolean A = true;
   //background(0);
   
   
  
    
}

void Knop1(){
   A = true;
  if(A == true){ 
    teller++;

    
    namen[teller] = tekstveld1.getText();
    
  }
  if(teller ==9){
    for(int i = 0; i < 10; i++){
      locatie++;
     text(namen[i],30,20*locatie);
    }
    
    }
}
