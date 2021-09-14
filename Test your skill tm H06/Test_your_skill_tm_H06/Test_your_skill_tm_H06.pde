float gewicht = 90;
float lengte = 1.90;
float leeftijd =30;
float BMI = 0;

BMI = gewicht / (lengte * lengte);
BMI *= 10;
BMI = round (BMI);
BMI /= 10;
println(BMI);

size(700,600);
background(255,255,255);

rect(325,100,200,300);

fill(0,0,0);
textSize(15);
text("Gewicht:" + gewicht + "KG",325,125);
text("Leeftijd:" + leeftijd + "Jaar",325,160);
text("Lengte:" + lengte + "Meter",325,195);


if(leeftijd <70){
 if(BMI < 18.5){
  fill(255,255,0);
 }else if(BMI < 25){
  fill(0,255,0);
 }else if (BMI < 30){
   fill(255,255,0);
 }else{
   fill(255,0,0);
  
 }
}else{
 if(BMI < 22){
  fill(255,255,0);
 }else if(BMI < 28){
  fill(0,255,0);
 }else if(BMI < 30){
   fill(255,255,0);
 }else{
  fill(255,0,0);
 }
}

textSize(30);
text("BMI:" + BMI,325,395);
