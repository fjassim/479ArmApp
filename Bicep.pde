long interval = 7000;
long start = 0;
boolean isFlexing = true;
boolean isDone = false;
int flexReadMax;
int muscleReadMax;
ArrayList<Integer> muscleValues= new ArrayList();
void bicepDraw(){
  pushStyle();
  background (256,256,256);
  fill(0);
  textAlign (CENTER) ;
  text ("Bicep Curl" ,350,80) ;
  if (isFlexing) {
      image(bicep, 200,100, 300, 300) ;
      text("Flex your Bicep for a few seconds", 350, 450 ); //<>//
      // Populate array here
    } else{
     isDone = true;
      image(bicepExtended, 200,100, 300, 300);
      text ("Now relax your arm\n for a few seconds", 350, 450);
      // Populate array here
     }
  if(millis () - start >= interval){
     start = millis();
    
    if(isDone){
      println("Time to go to next screenin");
      isDone = !isDone;
      tab = "bicepWorkout";
      }
     else{
       isFlexing = !isFlexing;
     }
  } 
  

}
