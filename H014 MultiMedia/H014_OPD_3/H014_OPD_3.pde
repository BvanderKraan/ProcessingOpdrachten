import processing.sound.*;
SoundFile file;

void setup(){
size(500,500);
file = new SoundFile(this,"Thunder.mp3");
file.play();
}

void draw(){

}
