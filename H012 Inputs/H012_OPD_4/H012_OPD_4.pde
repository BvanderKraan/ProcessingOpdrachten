int seconden;
int oldmillis;
boolean work;

void setup(){
  size(500,500);
}

void draw(){
  background(0);
    if(work){
  seconden = millis()/1000- oldmillis/1000;
    }
  text(seconden,225,225);
}

void keyReleased(){
   if(keyCode == 32){
   if(!work){
   oldmillis = millis();
   }
   work = true;
   }
   if(keyCode == 40){
   
     work = false;
   }
}
