  boolean showgraph2 = false;
  int sets2 = 0;
  int reps2 = 0;

void tricepWorkoutDraw(){

  
   pushStyle();
  background(256,256,256);
  fill(0);
  
  textAlign(CENTER);
  text("Tricep Pull",350,80);
  if(showgraph==false){
    
    image(tricep,200,100, 300, 300);
  }
  else{
    textSize(30);
    lineChart.draw(100, 100, 500, 250);
    textSize(45);
  }

  
  //image(tricep,200,100, 300, 300);

  text("Sets", width/4, height/2 + 160);
  // Text for "Reps"
  text("Reps", width*3/4, height/2 + 160);
  
  text(sets, width/4, height /2 + 220);
  text(reps, width *3/4, height /2 + 220);
  muscleActivity.moveTo(20, 400);
  endActivity.moveTo(550, 50);
   backBtn.moveTo(20,50);
  endActivity.addEventHandler(this,"endLessonTricep");
  
  //backBtn.moveTo(20,50);
  //backBtn.setText("Return Home");
  
  //backBtn.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  //backBtn.setTextBold();
}
