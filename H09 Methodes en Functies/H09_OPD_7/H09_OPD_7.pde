

void setup(){
  size(500,500);
  background(0,0,0);
}

void draw(){
muur(50,50,50);
  
}

void muur( int x, int y, int size){
  for(int i = 0; i<5; i++){
    fill(0,255,0);
    for(int j = 0; j<5; j++){
      rect(x,y,size,size);
      y+=50;
     
  }
  y = 50;
  x += 50;
  }

} 
