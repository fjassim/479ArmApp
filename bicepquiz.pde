void bicepQuizDraw(){
    startTime = millis(); // Record the start time for the first tab

  background(256,256,256); // RGB values for light blue
  textSize(45);
  
  fill(0,0,170);
  textAlign(CENTER);
  text("Bicep Curl",350,80);
  w1.moveTo(1000,1000);
  w2.moveTo(1000,1000);
  w3.moveTo(1000,1000);
  
  //GButton startBtn;
  image(bicep,250,130, 200, 200);
  
  
  text(quiztimer.hour() + ":" + nf(quiztimer.minute(), 2) + ":" +
   nf(quiztimer.second(), 2) + ":" + nf(quiztimer.millis(), 3), width/2, 400);
  text("Reps to beat ", 350,430 );
 
  
}
