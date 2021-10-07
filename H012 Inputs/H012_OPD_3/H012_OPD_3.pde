int x;
int y;

void setup(){
  size(500,500);
  background(255,255,255);
  
}

void draw(){
x = mouseX;
y = mouseY;
}

void mouseClicked(){
  fill(random(255),random(255),random(255)); 
  rect(x,y,50,50);
    
}
