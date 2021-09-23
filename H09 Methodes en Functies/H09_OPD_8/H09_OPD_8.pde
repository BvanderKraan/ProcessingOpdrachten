

void setup(){
size(500,500);
background(255,255,255);
}

void draw(){
mijnVoid(20,100,70,100,45,20);
}

void mijnVoid(int x, int y, int x2, int y2, int x3, int y3){
      triangle(x,y,x2,y2,x3,y3);
}
