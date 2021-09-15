size(500,500);
background(255,255,255);
int x = 10;
int y = 10;

for( int i = 0;i < 10; i++){
  for( int j = 0;j < 10; j++){
   rect(x,y,10,10);
   y +=10;
}
y = 10;
x += 10;
}
