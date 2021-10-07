int x;
int y;
int oldx;
int oldy;

void setup() {
  
  size(600, 600);
  oldx = 20;
  oldy = 20;

}


void draw() {

}

void mouseClicked() {
  
  x = mouseX;
  y = mouseY;
  stroke(0,0,0);
  line(oldx,oldy,x,y);
  oldx = x;
  oldy = y;
}
