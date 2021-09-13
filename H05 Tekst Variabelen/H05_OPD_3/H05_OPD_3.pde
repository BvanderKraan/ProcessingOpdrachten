float L = 1.60;
float G = 80;
float BMI;

String a = "Met een gewicht van";
String b = "kg en een lengte van";
String c = "is jouw BMI";

BMI = G /(L * L);
BMI *= 100;
BMI = (int) BMI;
BMI /= 100;

println( a +" " + b +" " + c + " "+ BMI);
