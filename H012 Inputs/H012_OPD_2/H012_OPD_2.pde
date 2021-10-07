int seconden;
int leftAmount;
int millisLeft;
int aantalSpaties = 0;
boolean racing= true;;

void setup(){
   size(500,500);
}
   
void draw(){
  background(255,255,255);
   
   seconden = millis()/1000;
   leftAmount = 9 - seconden;
   millisLeft = 1000 - (millis()%1000);
   
   if(leftAmount <= 0){
   leftAmount = 0;
   millisLeft = 0;
   }
   
   if(seconden >=10){
     racing = false;
     
   }
  fill(0,0,0);
  text("Spaties: " + aantalSpaties, 200,200);
  text("Seconds left " + leftAmount + "." + millisLeft, 200,220);
  
}

void keyReleased(){
    if(keyCode == 32 && racing){
    aantalSpaties++;
    }
}
