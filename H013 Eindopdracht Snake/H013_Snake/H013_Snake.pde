ArrayList<Integer> snakeTailX = new ArrayList<Integer>();
ArrayList<Integer> snakeTailY = new ArrayList<Integer>();
int speed = 10;
int points = 0;
int x = 24;
int y = 24;
int r = floor(random(49));
int r2 = floor(random(49));
boolean gameover = false;

void setup(){
  size(500,500);
}

void draw(){
  background(0);
  frameRate(speed);
 
  gameOver();
  
  if(x == r && y == r2){
    r = floor(random(49));
    r2 = floor(random(49));
  
  points ++;
  speed ++;
  
 }
 
  fill(0,255,0);
  text("Score: " + points ,220,70);
  textSize(15);
  
  tail();
  
  fill(255,255,255);

  if(keyCode == 37){
    x-=1;
  }
  if(keyCode == 38){
    y-= 1;
  }
  if(keyCode == 39){
    x+=1;
  }
  if(keyCode == 40){
    y+=1;
  }
  if(x == 50 || y == 50 || x == -1 || y == -1){
    gameover = true;
    println("dead");
  }
  rect(x*10,y*10,10,10);
  rect(r*10,r2*10,10,10);
  snaketail();
  for(int i = 1; i <snakeTailX.size(); i++){
    if(x == snakeTailX.get(i) && y == snakeTailY.get(i)){
      gameover = true;
      println("dead");
    }
  }
  
  noFill();
  for(int i = 0; i< snakeTailX.size(); i++){
    fill(random(125),random(100),random(75));
    rect(snakeTailX.get(i)*10,snakeTailY.get(i)*10,10,10);
  }
}

void tail(){
  if(snakeTailX.size() > 0){
  int[] kopieTailX = new int[snakeTailX.size()];
  int[] kopieTailY = new int[snakeTailY.size()];
  for(int i = 0; i < snakeTailX.size(); i++){
    kopieTailX[i] = snakeTailX.get(i);
    kopieTailY[i] = snakeTailY.get(i);
  }
  snakeTailX.set(0,x);
  snakeTailY.set(0,y);
  for(int i =1; i <snakeTailX.size(); i++){
    snakeTailX.set(i,kopieTailX[i - 1]);
    snakeTailY.set(i,kopieTailY[i - 1]); 
  }
  }
}

void snaketail(){
  if(x == r && y == r2){
    snakeTailX.add(100);
    snakeTailY.add(100);
  }
}

void gameOver(){
  if(gameover == true ){
    snakeTailX.clear();
    snakeTailY.clear();
    x = 24;
    y = 24;
    gameover = false;
    fill(0,255,0);
    textSize(20);
    text("Press space to continue ", 140,300);
    textSize(20);
    text("You died ",200,220);
    
    
    fill(255,0,0);
    switch(points){
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      textSize(20);
      text("You suck",217,90);
      break;
      case 5:
      case 6:
      case 7:
      textSize(20);
      text("You suck less",200,90);
      break;
    }
    if(points >= 8){
      textSize(20);
      text("Wow you actually don't suck",160,90);
    }
    speed = 10; 
    noLoop();
  } 
}
void keyReleased(){
  if(keyCode == 32){
    points = 0;
    loop();
   }
}
