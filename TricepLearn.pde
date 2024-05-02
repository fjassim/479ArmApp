long interval2 = 7000;
long start2 = 0;
boolean isFlexing2 = true;
boolean isDone2 = false;

void tricepLearnDraw(){
  pushStyle();
  background (256,256,256);
  fill(0);
  textAlign (CENTER) ;
  text ("Tricep Pull" ,350,80) ;

  if(millis () - start2 <= interval2){
    if (isFlexing2) {
      image(tricep, 200,100, 300, 300) ;
      text("Flex you Tricep for a few seconds", 350, 450 );
      // Populate array here
    } else{
     isDone2 = true;
      //image(bicepExtended, 200,100, 300, 300);
      text ("Now relax your arm\n for a few seconds", 350, 450);
      // Populate array here
     }
  } else {
  start2 = millis();
  isFlexing2 = !isFlexing2;
  if(isDone2){
    println("Time to go to next screenin");
    tab = "tricepWorkout";
    }
  }
  

}
