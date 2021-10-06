int zoekNummer = 10;
boolean gevonden =false;
int aantalgevonden = 0;
int[] Getallen = {10,15,22,33,10,70,40,30,10,54};

void setup(){
    for(int i = 0; i < Getallen.length; i++){
      if(Getallen[i] == zoekNummer){
      gevonden = true;
      aantalgevonden++;
      }
    }
      if(gevonden){
      println(aantalgevonden);
      }

}
