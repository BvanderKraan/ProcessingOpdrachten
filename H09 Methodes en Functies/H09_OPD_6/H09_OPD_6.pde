

void setup(){
size(500,500);
}

void draw(){
background(0,0,0);
circle(200,200,200,5);

}

void circle(int x, int y, int Sizecircle, int aantal){
    for( int i = 0; i < aantal; i ++){
      stroke(0,255,0);
    ellipse(x - Sizecircle/2, y, Sizecircle, Sizecircle);
    Sizecircle -=40;
    }
}
