int sets = 0;
int reps = 0;
boolean showgraph= false;
void bicepWorkoutDraw(){
   pushStyle();
  background(256,256,256);
  fill(0);
  
  textAlign(CENTER);
  text("Bicep Curl",350,80);
  if(showgraph==false){
    
    image(bicep,200,100, 300, 300);
  }
  else{
    textSize(30);
    lineChart.draw(100, 100, 500, 250);
    textSize(45);
  }

  text("Sets", width/4, height/2 + 160);
  // Text for "Reps"
  text("Reps", width*3/4, height/2 + 160);
  
  text(sets, width/4, height /2 + 220);
  text(reps, width *3/4, height /2 + 220);
  muscleActivity.moveTo(20, 400);
  endActivity.moveTo(550, 50);
   backBtn.moveTo(20,50);

  fill(color(0, 255, 0));
  textSize(32);
  if(ourOracle.state!=1){
    fill(color(255, 0, 0));
  }
  text("Oracle says: "+ourOracle.showMessage(),width/2, 650);
   fill(0);
   textSize(45);
}
