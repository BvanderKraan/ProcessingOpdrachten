PImage KawaiCat;
int image;

void setup(){
size(500,500);
KawaiCat = loadImage("KawaiCat.jpg");

}

void draw(){
for(int image = 0; image< 20; image++){
    image(KawaiCat,25*image,20,30,30);
  }
  
}
