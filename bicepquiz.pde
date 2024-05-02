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
  
  
  int remainingTime = tabDurations[currentTab] - (millis() - startTime);
  while(remainingTime != 0){
  // Display the remaining time on the screen
  textSize(32);
  textAlign(CENTER, CENTER);
  text("Timer: " + ceil(remainingTime / 1000.0), width/2, height/2 + 50);
   remainingTime = tabDurations[currentTab] - (millis() - startTime);

  }
  
}
