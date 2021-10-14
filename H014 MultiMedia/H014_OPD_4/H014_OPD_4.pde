import controlP5.*;
import processing.sound.*;

ControlP5 cp;
Button EvilLaugh;
Button Sadtrumpet;
Button Thunder;

SoundFile evilLaugh;
SoundFile sadtrumpet;
SoundFile thunder;

void setup(){
 size(500,500); 
 
 cp = new ControlP5(this);
 
   EvilLaugh = cp.addButton("Sound1")
            .setPosition(30,100)
            .setSize(100,50)
            .setCaptionLabel("Sound1");
            
            
   Sadtrumpet = cp.addButton("Sound2")
         .setPosition(30,200)
         .setSize(100,50)
         .setCaptionLabel("Sound2");
         
   Thunder = cp.addButton("Sound3")
         .setPosition(30,300)
         .setSize(100,50)
         .setCaptionLabel("Sound3");
         
  evilLaugh = new SoundFile(this, "EvilLaugh.mp3");
  sadtrumpet = new SoundFile(this, "Sadtrumpet.mp3");
  thunder = new SoundFile(this, "Thunder.mp3");

}

void draw(){

}

void Sound1(){
evilLaugh.play();
}

void Sound2(){
sadtrumpet.play();  
}

void Sound3(){
thunder.play();  
}
