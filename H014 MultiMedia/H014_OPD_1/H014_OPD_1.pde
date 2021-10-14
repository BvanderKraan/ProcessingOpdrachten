PImage cat1;
PImage cat2;
PImage cat3;

void setup(){
  size(500,500);
  cat1 = loadImage("HungryCat.jpg");
  cat2 = loadImage("SeriousCat.jpg");
  cat3 = loadImage("WiseCat.jpg");
}

void draw(){
 image(cat1,0,0, 100, 100); 
 image(cat2,101,0,150,100);
 image(cat3,201,0,300,300);
}
